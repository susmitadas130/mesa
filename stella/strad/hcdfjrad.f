      SubroutineDIFJAC
      IMPLICITREAL*8(A-H,O-Z)
      PARAMETER(NVARS=3)
      include '../obj/nfreq_and_mzone.inc'
      PARAMETER(NYDIM=(NVARS+2*NFREQ)*Mzon,MAXDER=4)
      Parameter(Is=5)
      PARAMETER(NZ=3000000)
      Parameter(Nstage=28,Natom=15)
      PARAMETER(KOMAX=80)
      LogicalLSYSTEM
      Parameter(LSystem=.FALSE.)
      Parameter(Pi=3.1415926535897932d+00,hPlanc=1.0545716280D-27,Cs=2.9979245800D+10,Boltzk=1.3806504000D-16,Avogar=6.0221417900D+2
     *3,AMbrun=1.6605387832D-24,AMelec=9.1093821500D-28,echarg=4.8032042700D-10,CG=6.6742800000D-08,CMS=1.9884000000D+33,RSol=6.9551
     *000000D+10,ULGR=1.4000000000D+01,UPURS=1.0000000000D+07,ULGPU=7.0000000000D+00,ULGEU=1.3000000000D+01,UPC=3.0856776000D+18,UTP
     *=1.0000000000D+05,URHO=1.0000000000D-06,CARAD=7.5657680191D-15,CSIGM=5.6704004778D-05,ERGEV=1.6021764864D-12,GRADeV=1.16045052
     *85D+04,RADC=7.5657680191D-02,CTOMP=4.0062048575D-01,CCAPS=2.6901213726D+01,CCAPZ=9.8964034725D+00)
      IntegerZn(Natom),ZnCo(Natom+1)
      DimensionAZ(Natom)
      Common/AZZn/AZ,Zn,ZnCo
      Common/NiAdap/tday,t_eve,XNifor(Mzon),AMeveNi,KNadap
      LOGICALFRST
      Parameter(Mfreq=130)
      Common/Kmzon/km,kmhap,Jac,FRST
      COMMON/STCOM1/t,H,HMIN,HMAX,EPS,N,METH,KFLAG,JSTART
      COMMON/YMAX/YMAX(NYDIM)
      COMMON/YSTIF/Y(NYDIM,MAXDER+1)
      COMMON/HNUSED/HUSED,NQUSED,NFUN,NJAC,NITER,NFAIL
      COMMON/HNT/HNT(7)
      PARAMETER(DELTA=1.d-05)
      PARAMETER(LICN=4*NZ,LIRN=2*NZ)
      LogicalNEEDBR
      COMMON/STJAC/THRMAT,HL,AJAC(LICN),IRN(LIRN),ICN(LICN),WJAC(NYDIM),FSAVE(NYDIM*2),IKEEP(5*NYDIM),IW(8*NYDIM),IDISP(11),NZMOD,NE
     *EDBR
      LOGICALCONV,CHNCND,SCAT,SEP
      COMMON/CUTOFF/FLOOR(NVARS+1),Wacc(NVARS+1),FitTau,TauTol,Rvis,CONV,CHNCND,SCAT,SEP
      LogicalLTHICK
      COMMON/THICK/LTHICK(Nfreq,Mzon)
      COMMON/CONVEC/UC(Mzon),YAINV(Mzon)
      COMMON/RAD/EDDJ(Mzon,Nfreq),EDDH(Mzon),HEDD(Nfreq),HEDRAD,CLIGHT,CKRAD,UFREQ,CFLUX,CCL,CLUM,CLUMF,CIMP,NTHICK(NFREQ),NTHNEW(NF
     *REQ),bolM,NCND,KRAD,NFRUS
      LOGICALEDTM
      COMMON/RADOLD/HEDOLD,HINEDD,EDTM
      Common/newedd/EddN(Mzon,Nfreq),HEdN(Nfreq),tfeau
      Common/oldedd/EddO(Mzon,Nfreq),HEdo(Nfreq),trlx
      Common/cnlast/Cnlast
      Common/Dhap/DHaphR(Mzon,Nfreq)
      COMMON/BAND/FREQ(NFREQ+1),FREQMN(NFREQ),WEIGHT(130),HAPPAL(NFREQ),HAPABSRON(NFREQ),HAPABS(NFREQ),DLOGNU(NFREQ)
      PARAMETER(NFRMIN=Nfreq/2)
      IntegerdLfrMax
      Common/observer/wH(Mfreq),cH(Mfreq),zerfr,Hcom(Mfreq),Hobs(Mfreq),freqob(Mfreq),dLfrMax
      Parameter(NP=15+15-1)
      Common/famu/fstatic(0:NP+1,Nfreq),fobs_corr(0:NP+1,Mfreq),fcom(0:NP+1,Mfreq),amustatic(0:NP+1)
      Common/rays/Pray(0:Np+1),fout(0:NP+1,Mfreq),abermu(0:NP+1),NmuNzon
      COMMON/LIM/Uplim,Haplim
      COMMON/AMM/DMIN,DM(Mzon),DMOUT,AMINI,AM(Mzon),AMOUT
      COMMON/Centr/RCE,Nzon
      Common/InEn/AMHT,EBurst,tBurst,tbeght
      COMMON/RADPUM/AMNI,XMNi,XNi,KmNick
      COMMON/RADGAM/FJgam(Mzon,2),toldg,tnewg
      COMMON/RADGlg/FJglog(Mzon,2)
      COMMON/CHEM/CHEM0(Mzon),RTphi(0:Mzon+1),EpsUq
      COMMON/REGIME/NREG(Mzon)
      doubleprecisionNRT
      COMMON/AQ/AQ,BQ,DRT,NRT
      COMMON/AZNUC/ACARB,ZCARB,ASI,ZSI,ANI,ZNI,QCSI,QSINI
      COMMON/QNRGYE/QNUC,RGASA,YELECT
      COMMON/CKN1/CK1,CK2,CFR,CRAP,CRAOLD
      LOGICALEVALJA,OLDJAC,BADSTE
      COMMON/EVAL/EVALJA,BADSTE,OLDJAC
      LogicalRadP
      COMMON/RadP/RadP
      COMMON/ARG/TP,PL,CHEM,LST,KENTR,JURS
      COMMON/RESULT/P,Egas,Sgas,ENG,CAPPA,PT,ET,ST,ENGT,CAPT,NZR
      COMMON/ABUND/XYZA,Yat(Natom)
      COMMON/AZ/AS,ZS,SCN
      COMMON/STR/PPL,EPL,SPL,ENGPL,CAPPL,CP,GAM,DA,DPE,DSE,DSP,BETgas
      COMMON/XELECT/XE,XET,XEPL,PE,Ycomp
      COMMON/URScap/Tpsqrt,Psicap,Scap,ScapT,ScapPl,ZMean,YZMean,ZMT,ZMPl,YZMT,YZMPl
      COMMON/BURNCC/CC,CCTP,CCPL,YDOT
      COMMON/ABarr/YABUN(Natom,Mzon)
      COMMON/UNSTL/UL,UPRESS,UE,UEPS,UCAP,UTIME,UV,UFLUX,UP
      COMMON/TAIL/KTAIL
      COMMON/UNINV/UPI,UEI
      COMMON/UNBSTL/UR,UM,UEPRI,ULGP,ULGE,ULGV,ULGTM,ULGEST,ULGFL,ULGCAP,ULGEPS
      PARAMETER(ALFCON=1.D0)
      Common/Hydro/dm0,dm1,dm2,Rodm,RSodm,R0,R1,R2,RSm1,RS0,RS1,RS2,RC0,RC1,RC2,Rcinv0,RCinv1,RCinv2,U0,U1,U2,Q1,Q2,QU1,QU2,UDIVR,UU
     *1,UU2,UQ1,UQ2,AQ1,AQ2,QUHALF
      Common/Termo/PL0,PL1,PL2,ET1,ET2,Tp0,Tp1,Tp2,PQ1,PQ2,PQpl1,PQpl2,PT1,PT2,TPTQ1,TPTQ2,TpT1,TpT2,Tp0up4,Tp1up4,Tp2up4,PTPL1,PTPL
     *2,PTT1,PTT2,ETPL1,ETPL2,ETT1,ETT2,DMETIN,CDMETI,CK2ET1,HEATRA,FLUM,FIMP,DTPOLD,ENG0,ENG1,ENG2,ENGPL1,ENGPL2,ENGT1,ENGT2
      Common/Tratst/TOTJ,TOTW,TOTWPR
      Common/Convo/PP0,PP1,PP2,CP0,CP1,CP2,GRA0,GRA1,GRA2,VCSQ0,VCSQ1,FC0,FC1,ELMIX0,ELMIX1,CFC0,CFC1,CPPL0,CPPL1,CPPL2,CPT0,CPT1,CP
     *T2,GRAPL0,GRAPL1,GRAPL2,GRAT0,GRAT1,GRAT2,PRPL0,PRPL1,PRPL2,PRT0,PRT1,PRT2
      Common/Fluxo/tau1(Nfreq),tau2(Nfreq),FL0,FL1,Flcor1,Flcor2,Fllf0,Flrt0,Fllf1,Flrt1,FLcore,CAPcor,CAP0,CAP1,CAP2,CAP1D,CAP1T,CA
     *PT0,CAPT1,CAPT2,CAPPL0,CAPPL1,CAPPL2,CM0INV,CM1INV
      Common/Transo/DJNU(NFREQ),B24(NFREQ),DFH(NFREQ),DFJ(NFREQ),DUR(NFREQ),DFJDPL(NFREQ),DFHDPL(NFREQ),HAPL(NFREQ),HAPL1(NFREQ),HAP
     *L2(NFREQ),HAPL1T(NFREQ),HAPL2T(NFREQ),HAPL1D(NFREQ),HAPL2D(NFREQ),HAPH(NFREQ),HAPH1(NFREQ),HAAB(NFREQ),HAAB1(NFREQ),HAAB2(NFRE
     *Q),HAAB1T(NFREQ),HAAB2T(NFREQ),HAAB1D(NFREQ),HAAB2D(NFREQ),FHcore(NFREQ),BLCKD(NFREQ)
      Common/Burno/YDOT1,YDOT2,CCPL1,CCPL2,CCTP1,CCTP2,AS1,AS2,YCARB1,YCARB2
      common/NSTEP/NSTEP,NDebug,MAXER,IOUT,NOUT
      common/CREAD/TAUOLD,NSTMAX,MBATCH,MAXORD
      common/debug/LfrDebug,Nperturb,Kbad
      PARAMETER(ZERJ=3.14159265358D-75)
      COMMON/PHOT/XJPH,DMPH,RPH,TPH,PLPH,VPH,CHEMPH,GRVPH,HP,JPH
      COMMON/JSAVE/ASAVE(NZ),IRS(NZ),ICS(NZ)
      DimensionHapH1D(Nfreq),HapH2D(Nfreq),tau1D(Nfreq),tau2D(Nfreq),tau1T(Nfreq),tau2T(Nfreq)
      DimensionA40(NFREQ),B40(NFREQ),A41(NFREQ),B41(NFREQ),B51(NFREQ),A50(NFREQ),B50(NFREQ),C50(NFREQ),B42(NFREQ),B52(NFREQ),B55(NFR
     *EQ),B44(NFREQ),A45(NFREQ),B45(NFREQ),B54(NFREQ),A55(NFREQ),C55(NFREQ),B15(NFREQ),C52(NFREQ),C54(NFREQ),A42(NFREQ),Z40(NFREQ),B
     *25(NFREQ),A25(NFREQ),BC44(NFREQ),BA44(NFREQ)
      BLACK(Lbl,Tpbl)=(exp(-(FREQMN(Lbl)/Tpbl)))/(1.d0-(exp(-(FREQMN(Lbl)/Tpbl))))
      BLACKD(Lbl,Tpbl)=(FREQMN(Lbl)/Tpbl)*(exp(-(FREQMN(Lbl)/Tpbl)))/(1.d0-(exp(-(FREQMN(Lbl)/Tpbl))))**2
      Theta(Z)=0.5D0*(SIGN(1.D0,Z)+1.D0)
      B01=-HL
      HLRSDM=HL*RSODM
      B10=-HL*2.D0*((PQ1-PQ2)*RODM*R1+AM(Km)/RC1)+HLRSDM*(PQPL1*(RCinv1*RS1)+PQPL2*(RCinv2*RS1)-2.D0*(QU1*U0*(RS0/RC1)+QU2*U1*(R1/RS
     *2)))
      B11=1.D0-HLRSDM*(QU1+QU2*(RS1/RS2))
      B12=-PT1*HLRSDM
      If(Km.EQ.1)Then
      A10=ZERJ
      A11=ZERJ
      else
      A10=(2.D0*QU1*R0*U0/RS1-PQPL1*(RCinv1*RS0))*HLRSDM
      A11=QU1*(RS0/RS1)*HLRSDM
      endif
      IF(.NOT.(Km.EQ.NZON))GOTO09999
      C11=ZERJ
      C12=ZERJ
      C10=ZERJ
      FLUMD1=0.D0
      FLUMT1=0.D0
      DO09996L=1,NFRUS
      B15(L)=-HL*WEIGHT(L)*hapH1(L)*CIMP*HEDD(L)
      FLUMD1=FLUMD1+FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km)*WEIGHT(L)*hapL1D(L)*HEDD(L)
      FLUMT1=FLUMT1+FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km)*WEIGHT(L)*hapL1T(L)*HEDD(L)
09996 CONTINUE
      FLUMD1=CIMP*FLUMD1
      FLUMT1=CIMP*FLUMT1
      B10=B10+HL*(FLUMD1-FIMP)/delta*(RCinv1*RS1)
      A10=A10-HL*(FLUMD1-FIMP)/delta*(RCinv1*RS0)
      B12=B12-HL*(FLUMT1-FIMP)/(delta*Tp1)
      GOTO09997
09999 CONTINUE
      IF(.NOT.(Km.LE.Ncnd))GOTO09998
      C10=(2.D0*QU2*U1*(RS1/RC2)-PQPL2*(RCinv2*RS2))*HLRSDM
      C11=QU2*HLRSDM
      C12=PT2*HLRSDM
      GOTO09997
09998 CONTINUE
      C10=(2.D0*QU2*U1*(RS1/RC2)-PQPL2*(RCinv2*RS2))*HLRSDM
      C11=QU2*HLRSDM
      C12=PT2*HLRSDM
      FLUMD1=0.D0
      FLUMD2=0.D0
      FLUMT1=0.D0
      FLUMT2=0.D0
      DO09993L=1,NFRUS
      B15(L)=-HL*WEIGHT(L)*hapH1(L)*CIMP
      tau1D(L)=HapL1D(L)*(dm1+dm2)/rs1
      tau2D(L)=HapL2D(L)*(dm1+dm2)/rs1
      tau1T(L)=HapL1T(L)*(dm1+dm2)/rs1
      tau2T(L)=HapL2T(L)*(dm1+dm2)/rs1
      FLUMD1=FLUMD1+FSAVE(NVARS*NZON-Ncnd+KRAD+(NZON-Ncnd)*(L-1)+Km)*WEIGHT(L)*(Tp1up4+Tp2up4)/((Tp2up4/hapL2(L))*(1.d0+1.5d0*(exp(-
     *tau2(L))+tau2(L)-1.d0)*exp(-tau1D(L)))+(Tp1up4/hapL1D(L))*(1.d0+1.5d0*(exp(-tau1D(L))+tau1D(L)-1.d0)*exp(-tau2(L))))
      HapH1D(L)=(Tp1up4+Tp2up4)/((Tp2up4/hapL2(L))*(1.d0+1.5d0*(exp(-tau2(L))+tau2(L)-1.d0)*exp(-tau1D(L)))+(Tp1up4/hapL1D(L))*(1.d0
     *+1.5d0*(exp(-tau1D(L))+tau1D(L)-1.d0)*exp(-tau2(L))))
      HapH2D(L)=(Tp1up4+Tp2up4)/((Tp2up4/hapL2D(L))*(1.d0+1.5d0*(exp(-tau2D(L))+tau2D(L)-1.d0)*exp(-tau1(L)))+(Tp1up4/hapL1(L))*(1.d
     *0+1.5d0*(exp(-tau1(L))+tau1(L)-1.d0)*exp(-tau2D(L))))
      FLUMD2=FLUMD2+FSAVE(NVARS*NZON-Ncnd+KRAD+(NZON-Ncnd)*(L-1)+Km)*WEIGHT(L)*HapH2D(L)
      FLUMT1=FLUMT1+FSAVE(NVARS*NZON-Ncnd+KRAD+(NZON-Ncnd)*(L-1)+Km)*WEIGHT(L)*((Tp1*(1.D0+delta))**4+Tp2up4)/((Tp2up4/hapL2(L))*(1.
     *d0+1.5d0*(exp(-tau2(L))+tau2(L)-1.d0)*exp(-tau1T(L)))+((Tp1*(1.D0+delta))**4/hapL1T(L))*(1.d0+1.5d0*(exp(-tau1T(L))+tau1T(L)-1
     *.d0)*exp(-tau2(L))))
      FLUMT2=FLUMT2+FSAVE(NVARS*NZON-Ncnd+KRAD+(NZON-Ncnd)*(L-1)+Km)*WEIGHT(L)*(Tp1up4+(Tp2*(1.D0+delta))**4)/(((Tp2*(1.D0+delta))**
     *4/hapL2T(L))*(1.d0+1.5d0*(exp(-tau2T(L))+tau2T(L)-1.d0)*exp(-tau1(L)))+(Tp1up4/hapL1(L))*(1.d0+1.5d0*(exp(-tau1(L))+tau1(L)-1.
     *d0)*exp(-tau2T(L))))
09993 CONTINUE
      FLUMD1=CIMP*FLUMD1
      FLUMD2=CIMP*FLUMD2
      FLUMT1=CIMP*FLUMT1
      FLUMT2=CIMP*FLUMT2
      B10=B10-HL*(-(FLUMD1-FIMP)/delta*(RCinv1*RS1)+(FLUMD2-FIMP)/delta*(RCinv2*RS1))
      A10=A10+HL*(-(FLUMD1-FIMP)/delta*(RCinv1*RS0))
      C10=C10-HL*(-(FLUMD2-FIMP)/delta*(RCinv2*RS2))
      B12=B12-HL*(FLUMT1-FIMP)/(delta*Tp1)
      C12=C12-HL*(FLUMT2-FIMP)/(delta*Tp2)
      If(Km.EQ.1)then
      A10=ZERJ
      A11=ZERJ
      endif
09997 CONTINUE
      If(km.GT.Ncnd)then
      HLRODM=HL*RODM
      B10=B10-HLRODM*(RTphi(Km)*U0/(R1-R0)**NRT*(min(0.d0,UQ1)/(R1-R0)*NRT-2.d0*Theta(-UQ1)*U0*(RS0/RC1))+RTphi(Km+1)*U2/(R2-R1)**NR
     *T*(+min(0.d0,UQ2)/(R2-R1)*NRT-2.d0*Theta(-UQ2)*U1*(R1/RS2)))
      A10=A10-HLRODM*(-RTphi(Km)*U1/(R1-R0)**NRT*(min(0.d0,UQ1)/(R1-R0)*NRT-2.d0*Theta(-UQ1)*U0*(R0/RS1)))
      C10=C10-HLRODM*(RTphi(Km+1)*U2/(R2-R1)**NRT*(-min(0.d0,UQ2)/(R2-R1)*NRT+2.d0*Theta(-UQ2)*U1*(RS1/RC2)))
      B11=B11-HLRODM*(-RTphi(Km)/(R1-R0)**NRT*(U0*Theta(-UQ1))-RTphi(Km+1)/(R2-R1)**NRT*(U2*Theta(-UQ2)*(RS1/RS2)))
      A11=A11-HLRODM*(RTphi(Km)/(R1-R0)**NRT*(-min(0.d0,UQ1)+U0*Theta(-UQ1)*(RS0/RS1)))
      C11=C11-HLRODM*(RTphi(Km+1)/(R2-R1)**NRT*(min(0.d0,UQ2)+U2*Theta(-UQ2)))
      endif
      If(Km.EQ.1)then
      A10=ZERJ
      A11=ZERJ
      endif
      KROW=Km
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=1.D0
      ICS(JAC)=Km
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=B01
      ICS(JAC)=Km+NZON
      KROW=NZON+Km
      If(abs(KNadap).EQ.5)then
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=1.d0
      ICS(JAC)=KROW
      else
      IF(A10.NE.ZERJ)THEN
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=A10
      ICS(JAC)=Km-1
      ENDIF
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=B10
      ICS(JAC)=Km
      IF(C10.NE.ZERJ)THEN
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=C10
      ICS(JAC)=Km+1
      ENDIF
      IF(A11.NE.ZERJ)THEN
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=A11
      ICS(JAC)=KROW-1
      ENDIF
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=B11
      ICS(JAC)=KROW
      IF(C11.NE.ZERJ)THEN
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=C11
      ICS(JAC)=KROW+1
      ENDIF
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=B12
      ICS(JAC)=2*NZON+Km
      IF(C12.NE.ZERJ)THEN
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=C12
      ICS(JAC)=2*NZON+Km+1
      ENDIF
      IF(Km.GT.Ncnd)THEN
      DO09990L=1,NFRUS
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=B15(L)
      IF(Km.NE.NZON)THEN
      ICS(JAC)=Km+NVARS*NZON+(NZON-Ncnd)*(L-1+NFRUS)-Ncnd
      ELSE
      ICS(JAC)=Km+NVARS*NZON+(NZON-Ncnd)*(L-1)-Ncnd
      ENDIF
09990 CONTINUE
      ENDIF
      endif
      IF(Km.GT.Ncnd)THEN
      DO09987L=1,NFRUS
      A25(L)=ZERJ
      If(LTHICK(L,Km))Then
      B24(L)=ZERJ
      IF(Km.GT.Ncnd+1)A25(L)=-HL*CKRAD*RS0*DMETIN*WEIGHT(L)
      B25(L)=+HL*CKRAD*RS1*DMETIN*WEIGHT(L)
      ELSE
      B24(L)=-HL*Theta(FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km))*CKRAD/ET1*HAAB1(L)*WEIGHT(L)
      B25(L)=ZERJ
      ENDIF
09987 CONTINUE
      ENDIF
      RCMET0=CM0INV*CDMETI
      RCMET1=CM1INV*CDMETI
      PL=PL1*(1.D0+delta)
      Tp=Tp1
      PTDIST=PTPL1
      ET11=ETPL1
      IF(Km.GT.Ncnd)THEN
      DO09984L=1,NFRUS
      hapL(L)=hapL1D(L)
      HAAB(L)=HAAB1D(L)
      hapH(L)=(Tp1up4+Tp2up4)/((Tp2up4/hapL2(L))*(1.d0+1.5d0*(exp(-tau2(L))+tau2(L)-1.d0)*exp(-tau1D(L)))+(Tp1up4/hapL1D(L))*(1.d0+1
     *.5d0*(exp(-tau1D(L))+tau1D(L)-1.d0)*exp(-tau2(L))))
09984 CONTINUE
      ENDIF
      TPTQ11=PTDIST+UU1*MIN(UU1,0.D0)*(AQ1*PL)
      DMETN1=1.D0/(DM1*ET11)
      DTPNEW=ENG1*(CK2/ET11)+(RS0*U0-RS1*U1)*TPTQ11*DMETN1
      IF(.NOT.(Km.LE.Ncnd))GOTO09981
      DTPNEW=DTPNEW+(FL0-FL1)*(CK1*DMETN1)
      GOTO09980
09981 CONTINUE
      IF(Km.EQ.Ncnd+1.AND.Km.GT.1)THEN
      FLcore=FLcor1+((R0*Tp0)**4-(R0*Tp1)**4)*Tp1up4/((CAP1D*(DM0+DM1)+0.d0*RS0)*(Tp0up4+Tp1up4))
      CAPcor=CAP1D
      ELSE
      FLcore=0.D0
      ENDIF
      calltraneq
      DTPNEW=DTPNEW+HEATRA/ET11
09980 CONTINUE
      TPPL=(DTPNEW-DTPOLD)/delta+CK2ET1*ENGPL1
      IF(Km.LT.Ncnd)THEN
      TPPL=TPPL+(FLLF1-FLRT0)*CAPPL1/CAP1*CDMETI
      ELSEIF(Km.EQ.Ncnd)THEN
      TPPL=TPPL+(FLcor1-FLRT0)*CAPPL1/CAP1*CDMETI
      ELSE
      DO09978L=1,NFRUS
      DFJDPL(L)=(DFJ(L)-FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km+NYDIM))/delta
      DFHDPL(L)=(DFH(L)-FSAVE(NVARS*NZON-Ncnd+KRAD+(NZON-Ncnd)*(L-1)+Km+NYDIM))/delta
09978 CONTINUE
      ENDIF
      IF(Km.NE.1)THEN
      TPU0=RS0*((TPTQ1+2.D0*Q1)*DMETIN)
      TPR0=TPPL*RCinv1*RS0+2.D0*R0*U0*((TPTQ1+2.D0*Q1)*DMETIN)
      IF(Km.LE.Ncnd)THEN
      TPT0=(4.D0*R0*(R0*Tp0)**3)*RCMET0+(FLLF0*(4.D0/Tp0-CAPT0/CAP0)-4.D0*FL0*Tp0**3/(Tp0up4+Tp1up4))*CDMETI
      TPRM1=-FLLF0*CAPPL0/CAP0*RCinv0*CDMETI
      TPR0=TPR0+4.D0*(Tp0*(R0*Tp0)**3-Tp1*(R0*Tp1)**3)*RCMET0-TPRM1*RS0
      A20=-TPR0*HL
      A22=-HL*TPT0
      IF(Km.GT.2)THEN
      Z20=-HL*TPRM1*RSM1
      ELSE
      Z20=ZERJ
      ENDIF
      ELSE
      A20=-TPR0*HL
      TPT0=0.D0
      A22=ZERJ
      Z20=ZERJ
      ENDIF
      A21=-HL*TPU0
      ELSE
      A21=ZERJ
      A22=ZERJ
      TPU0=0.D0
      Z20=ZERJ
      A20=ZERJ
      ENDIF
      IF(.NOT.(Km.LT.Ncnd))GOTO09975
      TPR2=-FLRT1*CAPPL2/CAP2*RCinv2*CDMETI
      TPR1=-TPPL*RCinv1*RS1-4.D0*((R1*(U1*(0.5D0*TPTQ1+Q1)+Q1*((RS0/RS1)*U0-U1)))*DMETIN+(Tp1*(R1*Tp1)**3-Tp2*(R1*Tp2)**3)*RCMET1)-T
     *PR2*RS1
      TPT2=(4.D0*R1*(R1*Tp2)**3)*RCMET1-(FLRT1*(4.D0/Tp2-CAPT2/CAP2)-4.D0*FL1*Tp2**3/(Tp1up4+Tp2up4))*CDMETI
      GOTO09973
09975 CONTINUE
      IF(.NOT.(Km.EQ.Ncnd.AND.Km.LT.Nzon))GOTO09974
      TPR2=-FLcor2/(CAP2*(DM1+DM2)+0.d0*RS1)*CAPPL2*(DM1+DM2)*RCinv2*CDMETI
      DFLDRR=4.D0*FL1/R1-FLcor2/(CAP2*(DM1+DM2)+0.d0*RS1)*(2.D0*0.d0*R1)
      TPR1=-TPPL*RCinv1*RS1-4.D0*(R1*(U1*(0.5D0*TPTQ1+Q1)+Q1*((RS0/RS1)*U0-U1)))*DMETIN-(DFLDRR-FLcor2/(CAP2*(DM1+DM2)+0.d0*RS1)*(CA
     *PPL2*(DM1+DM2)*RCinv2*RS1))*CDMETI
      DFLDRR=DFLDRR+FLcor1/CAP1*CAPPL1*RCinv1*RS1
      TPT2=(4.D0*R1*(R1*Tp2)**3)*RCMET1+(4.D0*FL1*Tp2**3/(Tp1up4+Tp2up4)-4.D0*FLcor2/Tp2+FLcor2/(CAP2*(DM1+DM2)+0.d0*RS1)*CAPT2*(DM1
     *+DM2))*CDMETI
      GOTO09973
09974 CONTINUE
      TPR2=0.D0
      TPT2=0.D0
      TPR1=-TPPL*RCinv1*RS1-4.D0*(R1*(U1*(0.5D0*TPTQ1+Q1)+Q1*((RS0/RS1)*U0-U1)))*DMETIN
09973 CONTINUE
      PL=PL1
      DTP=Tp1*delta
      Tp=Tp1+DTP
      PTDIST=PTT1
      ET11=ETT1
      IF(Km.GT.Ncnd)THEN
      DO09972L=1,NFRUS
      hapL(L)=hapL1T(L)
      HAAB(L)=HAAB1T(L)
      hapH(L)=(Tp**4+Tp2up4)/((Tp2up4/hapL2(L))*(1.d0+1.5d0*(exp(-tau2(L))+tau2(L)-1.d0)*exp(-tau1T(L)))+(Tp**4/hapL1T(L))*(1.d0+1.5
     *d0*(exp(-tau1T(L))+tau1T(L)-1.d0)*exp(-tau2(L))))
09972 CONTINUE
      ENDIF
      TPTQ11=PTDIST+UU1*MIN(UU1,0.D0)*(AQ1*PL)
      DMETN1=1.D0/(DM1*ET11)
      DTPNEW=ENG1*(CK2/ET11)+(RS0*U0-RS1*U1)*TPTQ11*DMETN1
      IF(.NOT.(Km.LE.Ncnd))GOTO09969
      DTPNEW=DTPNEW+(FL0-FL1)*(CK1*DMETN1)
      GOTO09968
09969 CONTINUE
      IF(Km.EQ.Ncnd+1.AND.Km.GT.1)THEN
      FLcore=((R0*Tp0)**4-(R0*Tp)**4)*(Tp0up4/(CAP0*(DM0+DM1))+Tp**4/((CAP1+CAPT1*DTP)*(DM0+DM1)+0.d0*RS0))/(Tp0up4+Tp**4)
      CAPcor=CAP1T
      ELSE
      FLcore=0.D0
      ENDIF
      calltraneq
      DTPNEW=DTPNEW+HEATRA/ET11
      DO09966L=1,NFRUS
      B42(L)=HL*(FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km+NYDIM)-DFJ(L))/DTP
      B52(L)=HL*(FSAVE(NVARS*NZON-Ncnd+KRAD+(NZON-Ncnd)*(L-1)+Km+NYDIM)-DFH(L))/DTP
09966 CONTINUE
09968 CONTINUE
      TPT1=(DTPNEW-DTPOLD)/DTP+(CK2ET1)*ENGT1
      IF(Km.LT.Ncnd)THEN
      TPT1=TPT1+(FLRT0*(4.D0/Tp1-CAPT1/CAP1)-4.D0*FL0*Tp1**3/(Tp0up4+Tp1up4)-FLLF1*(4.D0/Tp1-CAPT1/CAP1)+4.D0*FL1*Tp1**3/(Tp1up4+Tp2
     *up4))*CDMETI-4.D0*(R1*(R1*Tp1)**3*RCMET1+R0*(R0*Tp1)**3*RCMET0)
      ELSEIF(Km.EQ.Ncnd)THEN
      DFLDTP=4.D0*R1*(R1*Tp1)**3*CM1INV+(4.D0*FLcor1/Tp1-4.D0*FL1*Tp1**3/(Tp1up4+Tp2up4)-FLcor1/CAP1*CAPT1)
      TPT1=TPT1+(FLRT0*(4.D0/Tp1-CAPT1/CAP1)-4.D0*FL0*Tp1**3/(Tp0up4+Tp1up4)-DFLDTP)*CDMETI-4.D0*R0*(R0*Tp1)**3*RCMET0
      ENDIF
      TPU1=-RS1*(TPTQ1+2.D0*Q1)*DMETIN
      B20=-TPR1*HL
      B21=-HL*TPU1
      B22=1.D0-HL*TPT1
      If(Km.LE.Ncnd)then
      C20=-(HL*TPR2)*RS2
      C22=-HL*TPT2
      else
      C20=ZERJ
      C22=ZERJ
      endif
      KROW=2*NZON+Km
      IF(Tp1.LE.1.D+1/UTP)THEN
      If(Km.LE.Ncnd)then
      B21=0.D0
      A21=0.D0
      C20=0.D0
      B22=1.D0
      A22=0.D0
      C22=0.D0
      A20=0.D0
      B20=0.D0
      Z20=ZERJ
      else
      A22=ZERJ
      Z20=ZERJ
      C20=ZERJ
      C22=ZERJ
      B21=0.D0
      A21=0.D0
      B22=1.D0
      A20=0.D0
      B20=0.D0
      endif
      ENDIF
      IF(C20.NE.ZERJ)THEN
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=C20
      ICS(JAC)=Km+1
      ENDIF
      IF(A21.NE.ZERJ)THEN
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=A21
      ICS(JAC)=NZON+Km-1
      ENDIF
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=B21
      ICS(JAC)=NZON+Km
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=B22
      ICS(JAC)=KROW
      IF(C22.NE.ZERJ)THEN
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=C22
      ICS(JAC)=Km+1+2*NZON
      ENDIF
      IF(Km.GT.Ncnd)THEN
      DO09963L=1,NFRUS
      IF(B24(L).NE.ZERJ)THEN
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=B24(L)
      ICS(JAC)=Km+NVARS*NZON+(NZON-Ncnd)*(L-1)-Ncnd
      ENDIF
      IF(B25(L).NE.ZERJ)THEN
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=B25(L)
      ICS(JAC)=Km+NVARS*NZON+(NZON-Ncnd)*(L-1)-Ncnd+KRAD
      ENDIF
      IF(A25(L).NE.ZERJ)THEN
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=A25(L)
      ICS(JAC)=Km+NVARS*NZON+(NZON-Ncnd)*(L-1)-Ncnd+KRAD-1
      ENDIF
09963 CONTINUE
      ENDIF
      IF(.NOT.(Km.GT.Ncnd))GOTO09960
      DO09957L=1,NFRUS
      IF(Km.EQ.Ncnd+1)THEN
      FH0=FHcore(L)
      ELSE
      IF(ABS(FSAVE(NVARS*NZON-Ncnd+KRAD+(NZON-Ncnd)*(L-1)+Km-1)).GT.FLOOR(NVARS+1).AND.Ncnd.LT.0)THEN
      IF(FSAVE(NVARS*NZON-Ncnd+KRAD+(NZON-Ncnd)*(L-1)+Km-1).LT.0.D0)THEN
      FH0=-MIN(ABS(FSAVE(NVARS*NZON-Ncnd+KRAD+(NZON-Ncnd)*(L-1)+Km-1)),ABS(FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km))*2.0D0*EDDH(K
     *M))
      ELSE
      FH0=MIN(ABS(FSAVE(NVARS*NZON-Ncnd+KRAD+(NZON-Ncnd)*(L-1)+Km-1)),ABS(FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km-1))*2.0D0*EDDH(
     *KM))
      ENDIF
      ELSE
      FH0=FSAVE(NVARS*NZON-Ncnd+KRAD+(NZON-Ncnd)*(L-1)+Km-1)
      ENDIF
      ENDIF
      IF(Km.LT.NZON)THEN
      IF(ABS(FSAVE(NVARS*NZON-Ncnd+KRAD+(NZON-Ncnd)*(L-1)+Km)).GT.FLOOR(NVARS+1).AND.Ncnd.LT.0)THEN
      IF(FSAVE(NVARS*NZON-Ncnd+KRAD+(NZON-Ncnd)*(L-1)+Km).LT.0.D0)THEN
      FH1=-MIN(ABS(FSAVE(NVARS*NZON-Ncnd+KRAD+(NZON-Ncnd)*(L-1)+Km)),ABS(FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km+1))*2.0D0*EDDH(K
     *M))
      ELSE
      FH1=MIN(ABS(FSAVE(NVARS*NZON-Ncnd+KRAD+(NZON-Ncnd)*(L-1)+Km)),ABS(FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km))*2.0D0*EDDH(KM))
      ENDIF
      ELSE
      FH1=FSAVE(NVARS*NZON-Ncnd+KRAD+(NZON-Ncnd)*(L-1)+Km)
      ENDIF
      ELSE
      FH1=HEDD(L)*FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km)
      ENDIF
      B44(L)=1.D0+HL*(CLIGHT*HAAB1(L)*PL1+(U1-U0)/(R1-R0)*(1.D0+EDDJ(Km,L))+(3.D0-EDDJ(Km,L))*UDIVR)
      IF(Km.GT.1)THEN
      If(LTHICK(L,Km))Then
      A20=A20-2.D0*HL*R0*FH0*CKRAD*DMETIN*WEIGHT(L)
      B20=B20+2.D0*HL*R1*FH1*CKRAD*DMETIN*WEIGHT(L)
      ENDIF
      A40(L)=HL*(-DFJDPL(L)*RCinv1*RS0+FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km)*((U1-U0)/(R1-R0)**2*(1.D0+EDDJ(Km,L))+(3.D0-EDDJ(
     *Km,L))/(RC0+RC1)*(2.D0*R0*U0-3.D0*RS0*UDIVR))+CLIGHT*(RS0*(FH1*RS1-FH0*RS0)*RCinv1**2-2.D0*FH0*R0*RCinv1))
      A41(L)=HL*FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km)*(-1.D0/(R1-R0)*(1.D0+EDDJ(Km,L))+(3.D0-EDDJ(Km,L))*RS0/(RC0+RC1))
      ENDIF
      B40(L)=HL*(DFJDPL(L)*RCinv1*RS1+FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km)*(-(U1-U0)/(R1-R0)**2*(1.D0+EDDJ(Km,L))+(3.D0-EDDJ(
     *Km,L))/(RC0+RC1)*(2.D0*R1*U1-3.D0*RS1*UDIVR))+CLIGHT*(-RS1*(FH1*RS1-FH0*RS0)*RCinv1**2+2.D0*FH1*R1*RCinv1))
      B41(L)=HL*FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km)*(1.D0/(R1-R0)*(1.D0+EDDJ(Km,L))+(3.D0-EDDJ(Km,L))*RS1/(RC0+RC1))
      IF(Km.NE.Ncnd+1.AND.Km.NE.NZON)THEN
      A45(L)=-(HL*CLIGHT)*RS0*RCinv1
      B45(L)=(HL*CLIGHT)*RS1*RCinv1
      ELSEIF(Km.EQ.NZON)THEN
      A45(L)=-(HL*CLIGHT)*RS0*RCinv1
      B45(L)=ZERJ
      B44(L)=B44(L)+HEDD(L)*HL*CLIGHT*RS1*RCinv1
      ELSE
      B45(L)=(HL*CLIGHT)*RS1*RCinv1
      IF(Km.GT.1)THEN
      DF0DT=((FL0+DFLDTP*Tp0*delta)*BLACKD(L,(0.5D0*(Tp1+Tp0*(1.D0+delta))))*CAP1/(6.D0*(0.5D0*(Tp1+Tp0*(1.D0+delta)))**4*RS0*hapL1(
     *L))-FHcore(L))/(Tp0*delta)
      If(LTHICK(L,Km))Then
      Z20=Z20+HL*CKRAD*DMETIN*WEIGHT(L)*BLACKD(L,(0.5D0*(Tp1+Tp0)))*CAP1/(6.D0*(0.5D0*(Tp1+Tp0))**4*hapL1(L))*(FLcor1/CAP0*CAPPL0*RC
     *inv0*RSM1)
      A20=A20-HL*CKRAD*DMETIN*WEIGHT(L)*BLACKD(L,(0.5D0*(Tp1+Tp0)))*CAP1/(6.D0*(0.5D0*(Tp1+Tp0))**4*hapL1(L))*(FLcor1/CAP0*CAPPL0*RC
     *inv0*RS0)
      A22=A22-HL*RS0*CKRAD*DMETIN*WEIGHT(L)*DF0DT
      endif
      A42(L)=-(HL*CLIGHT)*RS0*RCinv1*DF0DT
      If(FL0.NE.0.d0)then
      A40(L)=A40(L)-HL*CLIGHT*RS0*RCinv1*FH0*(DFLDRR/FL0-2.D0/R0)
      Z40(L)=HL*CLIGHT*RS0*RCinv1*(FLcor1/CAP0*CAPPL0*RCinv0*RSM1)*BLCKD(L)*CAP1/(6.D0*(0.5D0*(Tp1+Tp0))**4*RS0*hapL1(L))
      B44(L)=B44(L)+(HL*CLIGHT)*RS0*RCinv1*(1.5D1/PI**4)*FHcore(L)/FL0*RS0**2*CM0INV*WEIGHT(L)
      endif
      ENDIF
      A45(L)=ZERJ
      ENDIF
      IF(Km.NE.NZON)THEN
      B55(L)=1.D0+4.D0*HL*U1/R1+(HL*CLIGHT)*hapH1(L)*3.D0*(DM1+DM2)/(RC2-RC0)
      B54(L)=(HL*CLIGHT)*(-EDDJ(Km,L)*2.D0/(R2-R0)+(1.5D0*EDDJ(Km,L)-0.5D0)*R0/RS1)
      C54(L)=(HL*CLIGHT)*(EDDJ(Km+1,L)*2.D0/(R2-R0)+(1.5D0*EDDJ(Km+1,L)-0.5D0)*R2/RS1)
      B55(L)=B55(L)+(HL*CLIGHT)*RVIS/(R1-R0)
      ELSE
      B55(L)=1.D0
      B54(L)=ZERJ
      C54(L)=ZERJ
      A55(L)=ZERJ
      C55(L)=ZERJ
      ENDIF
      IF(Km.LT.NZON-1)THEN
      A55(L)=-(HL*CLIGHT)*RVIS*(RS0/RS1)/(2.D0*(R1-R0))
      C55(L)=-(HL*CLIGHT)*RVIS*(RS2/RS1)/(2.D0*(R1-R0))
      ELSEIF(Km.EQ.NZON-1)THEN
      A55(L)=-(HL*CLIGHT)*RVIS*(RS0/RS1)/(2.D0*(R1-R0))
      C55(L)=ZERJ
      C54(L)=C54(L)	-(HL*CLIGHT)*RVIS*HEDD(L)*(RS2/RS1)/(2.D0*(R1-R0))
      ELSE
      A55(L)=ZERJ
      C55(L)=ZERJ
      ENDIF
      IF(Km.LT.NZON)THEN
      IF(Km.GT.1)THEN
      A50(L)=HL*(-DFHDPL(L)*RCinv1*RS0+CLIGHT*((EDDJ(Km+1,L)*FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km+1)-EDDJ(Km,L)*FSAVE(NVARS*NZ
     *ON-Ncnd+(NZON-Ncnd)*(L-1)+Km))*2.D0/(R2-R0)**2+hapH1(L)*9.D0*RS0*(DM1+DM2)/(RC2-RC0)**2*FSAVE(NVARS*NZON-Ncnd+KRAD+(NZON-Ncnd)
     **(L-1)+Km)+(1.5D0*EDDJ(Km,L)-0.5D0)*FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km)/RS1))
      if(NSTEP.GE.NDebug)then
      if(Km.GT.Ncnd.and.Km.LT.Ncnd+3.and.L.EQ.LfrDebug)then
      write(4,*)' computing A50 Km,L=',Km,L
      	write(4,*)' dFHPL/dr0=',DFHDPL(L)*RCinv1*RS0
      	write(4,'(a,1p,3e12.3)')' grad FJ=',CLIGHT*(		(EDDJ(Km+1,L)*FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km+1)-EDDJ(Km,L)*FSAVE(NV
     *ARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km))*2.D0/(R2-R0)**2)
      	write(4,'(a,1p,3e12.3)')' dFdHaph=',CLIGHT*(		+(hapH1D(L)-hapH1(L))/delta*RCinv1*RS0		*3.D0*(DM1+DM2)/(RC2-RC0)*FSAVE(NVARS*N
     *ZON-Ncnd+KRAD+(NZON-Ncnd)*(L-1)+Km))
      	write(4,'(a,1p,3e12.3)')' HapH1=',CLIGHT*(		+hapH1(L)*9.D0*RS0			*(DM1+DM2)			/(RC2-RC0)**2*FSAVE(NVARS*NZON-Ncnd+KRAD+(NZON-
     *Ncnd)*(L-1)+Km))
      	write(4,'(a,1p,3e12.3)')' EddjFj=',Clight*(			(1.5D0*EDDJ(Km,L)-0.5D0)*FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km)/RS1)
      	write(4,*)' Nthick=',Nthick(L)
      endif
      endif
      ELSE
      A50(L)=ZERJ
      ENDIF
      B50(L)=HL*(-4.D0*FSAVE(NVARS*NZON-Ncnd+KRAD+(NZON-Ncnd)*(L-1)+Km)*U1/RS1+CLIGHT*(DHaphR(Km,L)*3.D0*(DM1+DM2)/(RC2-RC0)*FSAVE(N
     *VARS*NZON-Ncnd+KRAD+(NZON-Ncnd)*(L-1)+Km)-2.D0*((1.5D0*EDDJ(Km,L)-0.5D0)*FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km)*R0+(1.5D0
     **EDDJ(Km+1,L)-0.5D0)*FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km+1)*R2)/RC1))
      C50(L)=HL*CLIGHT*(-(EDDJ(Km+1,L)*FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km+1)-EDDJ(Km,L)*FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L
     *-1)+Km))*2.D0/(R2-R0)**2-(hapH2D(L)-hapH1(L))/delta*RCinv2*RS2*3.D0*(DM1+DM2)/(RC2-RC0)*FSAVE(NVARS*NZON-Ncnd+KRAD+(NZON-Ncnd)
     **(L-1)+Km)-hapH1(L)*9.D0*RS2*(DM1+DM2)/(RC2-RC0)**2*FSAVE(NVARS*NZON-Ncnd+KRAD+(NZON-Ncnd)*(L-1)+Km)+(1.5D0*EDDJ(Km+1,L)-0.5D0
     *)*FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km+1)/RS1)
      B51(L)=4.D0*HL*FSAVE(NVARS*NZON-Ncnd+KRAD+(NZON-Ncnd)*(L-1)+Km)/R1
      C52(L)=(HL*CLIGHT)*(((hapL2T(L)-hapL2(L))/(delta*(hapL2(L)+Haplim*hapL1(L)))-4.D0)*Uplim*hapH1(L)/(hapL2(L)+Haplim*hapL1(L))+4
     *.D0)*hapH1(L)*Tp2**3/(Tp1up4+Tp2up4)*3.D0*(DM1+DM2)/(RC2-RC0)*FSAVE(NVARS*NZON-Ncnd+KRAD+(NZON-Ncnd)*(L-1)+Km)
      IF(Km.NE.NZON-1)THEN
      If(Km.GT.1)A50(L)=A50(L)-(HL*CLIGHT)*RVIS*((FH0*(RS0/RS1)-2.D0*FH1+FSAVE(NVARS*NZON-Ncnd+KRAD+(NZON-Ncnd)*(L-1)+Km+1)*(RS2/RS1
     *))/(2.D0*(R1-R0)**2)+FH0*R0/(RS1*(R1-R0)))
      B50(L)=B50(L)+(HL*CLIGHT)*RVIS*((FH0*(RS0/RS1)-2.D0*FH1+FSAVE(NVARS*NZON-Ncnd+KRAD+(NZON-Ncnd)*(L-1)+Km+1)*(RS2/RS1))/(2.D0*(R
     *1-R0)**2)+(FH0*RS0+FSAVE(NVARS*NZON-Ncnd+KRAD+(NZON-Ncnd)*(L-1)+Km+1)*RS2)/(RC1*(R1-R0)))
      C50(L)=C50(L)-(HL*CLIGHT)*RVIS*(+FSAVE(NVARS*NZON-Ncnd+KRAD+(NZON-Ncnd)*(L-1)+Km+1)*R2/(RS1*(R1-R0)))
      ELSEIF(Km.EQ.NZON-1)THEN
      If(Km.GT.1)A50(L)=A50(L)-(HL*CLIGHT)*RVIS*((FH0*(RS0/RS1)-2.D0*FH1+HEDD(L)*FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km+1)*(RS2/
     *RS1))/(2.D0*(R1-R0)**2)+FH0*R0/(RS1*(R1-R0)))
      B50(L)=B50(L)+(HL*CLIGHT)*RVIS*((FH0*(RS0/RS1)-2.D0*FH1+HEDD(L)*FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km+1)*(RS2/RS1))/(2.D0
     **(R1-R0)**2)+(FH0*RS0+HEDD(L)*FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km+1)*RS2)/(RC1*(R1-R0)))
      C50(L)=C50(L)-(HL*CLIGHT)*RVIS*(+HEDD(L)*FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km+1)*R2/(RS1*(R1-R0)))
      ENDIF
      ELSE
      A50(L)=ZERJ
      B50(L)=ZERJ
      C50(L)=ZERJ
      B51(L)=ZERJ
      C52(L)=ZERJ
      ENDIF
      IF(DUR(L).GT.0.D0)THEN
      BA44(L)=0.D0
      IF(.NOT.(L.EQ.1))GOTO09954
      BC44(1)=-(HL*DUR(2))*FREQMN(2)**4/WEIGHT(1)
      BA44(1)=ZERJ
      IF(Km.GT.1)THEN
      A40(1)=A40(1)-HL*((U1-U0)/(R1-R0)**2*(FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*L+Km)*FREQMN(2)**4*EDDJ(Km,2))+(2.D0*R0*U0-3.D0*RS0*UD
     *IVR)/(RC0+RC1)*(FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*L+Km)*FREQMN(2)**4*(1.D0-EDDJ(Km,2))))/WEIGHT(1)
      A41(1)=A41(1)-HL*(-(FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*L+Km)*FREQMN(2)**4*EDDJ(Km,2))/(R1-R0)+RS0/(RC0+RC1)*(FSAVE(NVARS*NZON-N
     *cnd+(NZON-Ncnd)*L+Km)*FREQMN(2)**4*(1.D0-EDDJ(Km,2))))/WEIGHT(1)
      ENDIF
      B40(1)=B40(1)-HL*(-(U1-U0)/(R1-R0)**2*(FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*L+Km)*FREQMN(2)**4*EDDJ(Km,2))+(2.D0*R1*U1-3.D0*RS1*U
     *DIVR)/(RC0+RC1)*(FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*L+Km)*FREQMN(2)**4*(1.D0-EDDJ(Km,2))))/WEIGHT(1)
      B41(1)=B41(1)-HL*((FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*L+Km)*FREQMN(2)**4*EDDJ(Km,2))/(R1-R0)+RS1/(RC0+RC1)*(FSAVE(NVARS*NZON-Nc
     *nd+(NZON-Ncnd)*L+Km)*FREQMN(2)**4*(1.D0-EDDJ(Km,2))))/WEIGHT(1)
      GOTO09952
09954 CONTINUE
      IF(.NOT.(L.EQ.NFRUS))GOTO09953
      B44(L)=B44(L)+(HL*DUR(L))*FREQMN(L)**4/WEIGHT(L)
      BC44(L)=ZERJ
      IF(Km.GT.1)THEN
      A40(L)=A40(L)-HL*((U1-U0)/(R1-R0)**2*(-FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km)*FREQMN(L)**4*EDDJ(Km,L))+(2.D0*R0*U0-3.D0*R
     *S0*UDIVR)/(RC0+RC1)*(-FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km)*FREQMN(L)**4*(1.D0-EDDJ(Km,L))))/WEIGHT(L)
      A41(L)=A41(L)-HL*(-(-FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km)*FREQMN(L)**4*EDDJ(Km,L))/(R1-R0)+RS0/(RC0+RC1)*(-FSAVE(NVARS*
     *NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km)*FREQMN(L)**4*(1.D0-EDDJ(Km,L))))/WEIGHT(L)
      ENDIF
      B40(L)=B40(L)-HL*(-(U1-U0)/(R1-R0)**2*(-FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km)*FREQMN(L)**4*EDDJ(Km,L))+(2.D0*R1*U1-3.D0*
     *RS1*UDIVR)/(RC0+RC1)*(-FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km)*FREQMN(L)**4*(1.D0-EDDJ(Km,L))))/WEIGHT(L)
      B41(L)=B41(L)-HL*((-FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km)*FREQMN(L)**4*EDDJ(Km,L))/(R1-R0)+RS1/(RC0+RC1)*(-FSAVE(NVARS*N
     *ZON-Ncnd+(NZON-Ncnd)*(L-1)+Km)*FREQMN(L)**4*(1.D0-EDDJ(Km,L))))/WEIGHT(L)
      GOTO09952
09953 CONTINUE
      B44(L)=B44(L)+(HL*DUR(L))*FREQMN(L)**4/WEIGHT(L)
      BC44(L)=-(HL*DUR(L+1))*FREQMN(L+1)**4/WEIGHT(L)
      IF(Km.GT.1)THEN
      A40(L)=A40(L)-HL*((U1-U0)/(R1-R0)**2*(FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*L+Km)*FREQMN(L+1)**4*EDDJ(Km,L+1)-FSAVE(NVARS*NZON-Ncn
     *d+(NZON-Ncnd)*(L-1)+Km)*FREQMN(L)**4*EDDJ(Km,L))+(2.D0*R0*U0-3.D0*RS0*UDIVR)/(RC0+RC1)*(FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*L+Km
     *)*FREQMN(L+1)**4*(1.D0-EDDJ(Km,L+1))-FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km)*FREQMN(L)**4*(1.D0-EDDJ(Km,L))))/WEIGHT(L)
      A41(L)=A41(L)-HL*(-(FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*L+Km)*FREQMN(L+1)**4*EDDJ(Km,L+1)-FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1
     *)+Km)*FREQMN(L)**4*EDDJ(Km,L))/(R1-R0)+RS0/(RC0+RC1)*(FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*L+Km)*FREQMN(L+1)**4*(1.D0-EDDJ(Km,L+1
     *))-FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km)*FREQMN(L)**4*(1.D0-EDDJ(Km,L))))/WEIGHT(L)
      ENDIF
      B40(L)=B40(L)-HL*(-(U1-U0)/(R1-R0)**2*(FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*L+Km)*FREQMN(L+1)**4*EDDJ(Km,L+1)-FSAVE(NVARS*NZON-Nc
     *nd+(NZON-Ncnd)*(L-1)+Km)*FREQMN(L)**4*EDDJ(Km,L))+(2.D0*R1*U1-3.D0*RS1*UDIVR)/(RC0+RC1)*(FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*L+K
     *m)*FREQMN(L+1)**4*(1.D0-EDDJ(Km,L+1))-FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km)*FREQMN(L)**4*(1.D0-EDDJ(Km,L))))/WEIGHT(L)
      B41(L)=B41(L)-HL*((FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*L+Km)*FREQMN(L+1)**4*EDDJ(Km,L+1)-FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)
     *+Km)*FREQMN(L)**4*EDDJ(Km,L))/(R1-R0)+RS1/(RC0+RC1)*(FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*L+Km)*FREQMN(L+1)**4*(1.D0-EDDJ(Km,L+1)
     *)-FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km)*FREQMN(L)**4*(1.D0-EDDJ(Km,L))))/WEIGHT(L)
09952 CONTINUE
      ELSE
      BC44(L)=0.D0
      IF(.NOT.(L.EQ.1))GOTO09951
      B44(1)=B44(1)-(HL*DUR(1))*FREQMN(1)**4/WEIGHT(1)
      BA44(1)=ZERJ
      IF(Km.GT.1)THEN
      A40(1)=A40(1)-HL*((U1-U0)/(R1-R0)**2*(FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km)*FREQMN(1)**4*EDDJ(Km,1))+(2.D0*R0*U0-3.D0*RS
     *0*UDIVR)/(RC0+RC1)*(FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km)*FREQMN(2)**4*(1.D0-EDDJ(Km,2))))/WEIGHT(1)
      A41(1)=A41(1)-HL*(-(FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km)*FREQMN(1)**4*EDDJ(Km,1))/(R1-R0)+RS0/(RC0+RC1)*(FSAVE(NVARS*NZ
     *ON-Ncnd+(NZON-Ncnd)*(L-1)+Km)*FREQMN(1)**4*(1.D0-EDDJ(Km,1))))/WEIGHT(1)
      ENDIF
      B40(1)=B40(1)-HL*(-(U1-U0)/(R1-R0)**2*(FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km)*FREQMN(1)**4*EDDJ(Km,1))+(2.D0*R1*U1-3.D0*R
     *S1*UDIVR)/(RC0+RC1)*(FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km)*FREQMN(1)**4*(1.D0-EDDJ(Km,1))))/WEIGHT(1)
      B41(1)=B41(1)-HL*((FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km)*FREQMN(1)**4*EDDJ(Km,1))/(R1-R0)+RS1/(RC0+RC1)*(FSAVE(NVARS*NZO
     *N-Ncnd+(NZON-Ncnd)*(L-1)+Km)*FREQMN(1)**4*(1.D0-EDDJ(Km,1))))/WEIGHT(1)
      GOTO09949
09951 CONTINUE
      IF(.NOT.(L.EQ.NFRUS))GOTO09950
      BA44(L)=(HL*DUR(L-1))*FREQMN(L-1)**4/WEIGHT(L)
      BC44(L)=ZERJ
      IF(Km.GT.1)THEN
      A40(L)=A40(L)-HL*((U1-U0)/(R1-R0)**2*(-FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-2)+Km)*FREQMN(L-1)**4*EDDJ(Km,L-1))+(2.D0*R0*U0-3.
     *D0*RS0*UDIVR)/(RC0+RC1)*(-FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-2)+Km)*FREQMN(L-1)**4*(1.D0-EDDJ(Km,L-1))))/WEIGHT(L)
      A41(L)=A41(L)-HL*(-(-FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-2)+Km)*FREQMN(L-1)**4*EDDJ(Km,L-1))/(R1-R0)+RS0/(RC0+RC1)*(-FSAVE(NV
     *ARS*NZON-Ncnd+(NZON-Ncnd)*(L-2)+Km)*FREQMN(L-1)**4*(1.D0-EDDJ(Km,L-1))))/WEIGHT(L)
      ENDIF
      B40(L)=B40(L)-HL*(-(U1-U0)/(R1-R0)**2*(-FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-2)+Km)*FREQMN(L-1)**4*EDDJ(Km,L-1))+(2.D0*R1*U1-3
     *.D0*RS1*UDIVR)/(RC0+RC1)*(-FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-2)+Km)*FREQMN(L-1)**4*(1.D0-EDDJ(Km,L-1))))/WEIGHT(L)
      B41(L)=B41(L)-HL*((-FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-2)+Km)*FREQMN(L-1)**4*EDDJ(Km,L-1))/(R1-R0)+RS1/(RC0+RC1)*(-FSAVE(NVA
     *RS*NZON-Ncnd+(NZON-Ncnd)*(L-2)+Km)*FREQMN(L-1)**4*(1.D0-EDDJ(Km,L-1))))/WEIGHT(L)
      GOTO09949
09950 CONTINUE
      B44(L)=B44(L)-(HL*DUR(L))*FREQMN(L)**4/WEIGHT(L)
      BA44(L)=(HL*DUR(L-1))*FREQMN(L-1)**4/WEIGHT(L)
      IF(Km.GT.1)THEN
      A40(L)=A40(L)-HL*((U1-U0)/(R1-R0)**2*(FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km)*FREQMN(L)**4*EDDJ(Km,L)-FSAVE(NVARS*NZON-Ncn
     *d+(NZON-Ncnd)*(L-2)+Km)*FREQMN(L-1)**4*EDDJ(Km,L-1))+(2.D0*R0*U0-3.D0*RS0*UDIVR)/(RC0+RC1)*(FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*
     *(L-1)+Km)*FREQMN(L)**4*(1.D0-EDDJ(Km,L))-FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-2)+Km)*FREQMN(L-1)**4*(1.D0-EDDJ(Km,L-1))))/WEIG
     *HT(L)
      A41(L)=A41(L)-HL*(-(FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km)*FREQMN(L)**4*EDDJ(Km,L)-FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-2
     *)+Km)*FREQMN(L-1)**4*EDDJ(Km,L-1))/(R1-R0)+RS0/(RC0+RC1)*(FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km)*FREQMN(L)**4*(1.D0-EDDJ(
     *Km,L))-FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-2)+Km)*FREQMN(L-1)**4*(1.D0-EDDJ(Km,L-1))))/WEIGHT(L)
      ENDIF
      B40(L)=B40(L)-HL*(-(U1-U0)/(R1-R0)**2*(FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km)*FREQMN(L)**4*EDDJ(Km,L)-FSAVE(NVARS*NZON-Nc
     *nd+(NZON-Ncnd)*(L-2)+Km)*FREQMN(L-1)**4*EDDJ(Km,L-1))+(2.D0*R1*U1-3.D0*RS1*UDIVR)/(RC0+RC1)*(FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)
     **(L-1)+Km)*FREQMN(L)**4*(1.D0-EDDJ(Km,L))-FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-2)+Km)*FREQMN(L-1)**4*(1.D0-EDDJ(Km,L-1))))/WEI
     *GHT(L)
      B41(L)=B41(L)-HL*((FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km)*FREQMN(L)**4*EDDJ(Km,L)-FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-2)
     *+Km)*FREQMN(L-1)**4*EDDJ(Km,L-1))/(R1-R0)+RS1/(RC0+RC1)*(FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-1)+Km)*FREQMN(L)**4*(1.D0-EDDJ(K
     *m,L))-FSAVE(NVARS*NZON-Ncnd+(NZON-Ncnd)*(L-2)+Km)*FREQMN(L-1)**4*(1.D0-EDDJ(Km,L-1))))/WEIGHT(L)
09949 CONTINUE
      ENDIF
09957 CONTINUE
      DO09948L=1,NFRUS
      KROW=Km+NVARS*NZON+(NZON-Ncnd)*(L-1)-Ncnd
      IF(Km.GT.1)THEN
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=A40(L)
      ICS(JAC)=Km-1
      ENDIF
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=B40(L)
      ICS(JAC)=Km
      IF(Km.GT.1)THEN
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=A41(L)
      ICS(JAC)=Km+NZON-1
      ENDIF
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=B41(L)
      ICS(JAC)=Km+NZON
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=B42(L)
      ICS(JAC)=Km+2*NZON
      IF(Km.EQ.Ncnd+1.AND.Km.NE.1)THEN
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=A42(L)
      ICS(JAC)=Km+2*NZON-1
      ENDIF
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=B44(L)
      ICS(JAC)=KROW
      IF(Km.EQ.Ncnd+1.AND.Km.NE.1)THEN
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=Z40(L)
      ICS(JAC)=Km-2
      ENDIF
      IF(A45(L).NE.ZERJ)THEN
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=A45(L)
      ICS(JAC)=KROW-1+KRAD
      ENDIF
      IF(B45(L).NE.ZERJ)THEN
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=B45(L)
      ICS(JAC)=KROW+KRAD
      ENDIF
      IF(BC44(L).NE.ZERJ)THEN
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=BC44(L)
      ICS(JAC)=KROW+(NZON-Ncnd)
      ENDIF
      IF(BA44(L).NE.ZERJ)THEN
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=BA44(L)
      ICS(JAC)=KROW-(NZON-Ncnd)
      ENDIF
09948 CONTINUE
      DO09945L=1,NFRUS
      KROW=Km+NVARS*NZON+(NZON-Ncnd)*(L-1)-Ncnd+KRAD
      IF(A50(L).NE.ZERJ)THEN
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=A50(L)
      ICS(JAC)=Km-1
      ENDIF
      IF(B50(L).NE.ZERJ)THEN
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=B50(L)
      ICS(JAC)=Km
      ENDIF
      IF(C50(L).NE.ZERJ)THEN
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=C50(L)
      ICS(JAC)=Km+1
      ENDIF
      IF(B51(L).NE.ZERJ)THEN
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=B51(L)
      ICS(JAC)=Km+NZON
      ENDIF
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=B52(L)
      ICS(JAC)=Km+2*NZON
      IF(C52(L).NE.ZERJ)THEN
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=C52(L)
      ICS(JAC)=Km+1+2*NZON
      ENDIF
      IF(B54(L).NE.ZERJ)THEN
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=B54(L)
      ICS(JAC)=KROW-KRAD
      ENDIF
      IF(C54(L).NE.ZERJ)THEN
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=C54(L)
      ICS(JAC)=KROW+1-KRAD
      ENDIF
      IF(A55(L).NE.ZERJ)THEN
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=A55(L)
      ICS(JAC)=KROW-1
      ENDIF
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=B55(L)
      ICS(JAC)=KROW
      IF(C55(L).NE.ZERJ)THEN
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=C55(L)
      ICS(JAC)=KROW+1
      ENDIF
09945 CONTINUE
09960 CONTINUE
      KROW=2*NZON+Km
      IF(Z20.NE.ZERJ)THEN
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=Z20
      ICS(JAC)=Km-2
      ENDIF
      IF(A20.NE.ZERJ)THEN
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=A20
      ICS(JAC)=Km-1
      ENDIF
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=B20
      ICS(JAC)=Km
      IF(A22.NE.ZERJ)THEN
      JAC=JAC+1
      IRS(JAC)=KROW
      AJAC(JAC)=A22
      ICS(JAC)=Km-1+2*NZON
      ENDIF
      NZMOD=JAC
      IF(NZMOD.GE.NZ-1)THEN
      WRITE(*,*)' NZMOD>NZ'
      WRITE(4,*)' NZMOD>NZ'
      STOP' NZMOD>NZ'
      ENDIF
      return
      end
