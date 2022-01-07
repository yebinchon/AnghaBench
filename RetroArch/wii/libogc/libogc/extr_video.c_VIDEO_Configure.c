
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct _timing {int psbEven; int psbOdd; int prbEven; int prbOdd; int acv; int equ; } ;
struct TYPE_6__ {int nonInter; int tv; int dispPosY; int fbSizeY; scalar_t__ fbMode; int panSizeY; int dispSizeY; int threeD; int black; int adjustedDispSizeY; int adjustedDispPosY; int rbfbb; int rtfbb; int bfbb; int tfbb; int xof; int wpl; int std; int wordPerLine; int panSizeX; scalar_t__ panPosX; int fbSizeX; int dispSizeX; int adjustedDispPosX; struct _timing const* timing; scalar_t__ panPosY; int dispPosX; } ;
struct TYPE_5__ {int viTVMode; int viYOrigin; int xfbHeight; scalar_t__ xfbMode; int fbWidth; int viWidth; int viXOrigin; } ;
typedef TYPE_1__ GXRModeObj ;


 TYPE_2__ HorVer ;
 int VI_EURGB60 ;
 int VI_NON_INTERLACE ;
 int VI_PROGRESSIVE ;
 int VI_REGCHANGE (int) ;
 int VI_TVMODE (int,int) ;
 scalar_t__ VI_XFBMODE_SF ;
 int _CPU_ISR_Disable (int) ;
 int _CPU_ISR_Restore (int) ;
 int _SHIFTL (int,int,int) ;
 int _SHIFTR (int,int,int) ;
 int __adjustPosition (int ) ;
 struct _timing* __gettiming (int) ;
 int __setBBIntervalRegs (struct _timing const*) ;
 int __setFbbRegs (TYPE_2__*,int *,int *,int *,int *) ;
 int __setHorizontalRegs (struct _timing const*,int ,int ) ;
 int __setInterruptRegs (struct _timing const*) ;
 int __setPicConfig (int ,scalar_t__,scalar_t__,int ,int *,int *,int *,int *) ;
 int __setScalingRegs (int ,int ,int) ;
 int __setVerticalRegs (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int changeMode ;
 int changed ;
 scalar_t__ fbSet ;
 int* regs ;

void VIDEO_Configure(GXRModeObj *rmode)
{
 u16 dcr;
 u32 nonint,vimode,level;
 const struct _timing *curtiming;
 _CPU_ISR_Disable(level);
 nonint = (rmode->viTVMode&0x0003);
 if(nonint!=HorVer.nonInter) {
  changeMode = 1;
  HorVer.nonInter = nonint;
 }
 HorVer.tv = _SHIFTR(rmode->viTVMode,2,3);
 HorVer.dispPosX = rmode->viXOrigin;
 HorVer.dispPosY = rmode->viYOrigin;
 if(HorVer.nonInter==VI_NON_INTERLACE) HorVer.dispPosY = HorVer.dispPosY<<1;

 HorVer.dispSizeX = rmode->viWidth;
 HorVer.fbSizeX = rmode->fbWidth;
 HorVer.fbSizeY = rmode->xfbHeight;
 HorVer.fbMode = rmode->xfbMode;
 HorVer.panSizeX = HorVer.fbSizeX;
 HorVer.panSizeY = HorVer.fbSizeY;
 HorVer.panPosX = 0;
 HorVer.panPosY = 0;

 if(HorVer.nonInter==VI_PROGRESSIVE || HorVer.nonInter==(VI_NON_INTERLACE|VI_PROGRESSIVE)) HorVer.dispSizeY = HorVer.panSizeY;
 else if(HorVer.fbMode==VI_XFBMODE_SF) HorVer.dispSizeY = HorVer.panSizeY<<1;
 else HorVer.dispSizeY = HorVer.panSizeY;

 if(HorVer.nonInter==(VI_NON_INTERLACE|VI_PROGRESSIVE)) HorVer.threeD = 1;
 else HorVer.threeD = 0;

 vimode = VI_TVMODE(HorVer.tv,HorVer.nonInter);
 curtiming = __gettiming(vimode);
 HorVer.timing = curtiming;

 __adjustPosition(curtiming->acv);
 __setInterruptRegs(curtiming);

 dcr = regs[1]&~0x030c;
 dcr |= _SHIFTL(HorVer.threeD,3,1);
 if(HorVer.nonInter==VI_PROGRESSIVE || HorVer.nonInter==(VI_NON_INTERLACE|VI_PROGRESSIVE)) dcr |= 0x0004;
 else dcr |= _SHIFTL(HorVer.nonInter,2,1);
 if(!(HorVer.tv==VI_EURGB60)) dcr |= _SHIFTL(HorVer.tv,8,2);
 regs[1] = dcr;
 changed |= VI_REGCHANGE(1);

 regs[54] &= ~0x0001;
 if(HorVer.nonInter==VI_PROGRESSIVE || HorVer.nonInter==(VI_NON_INTERLACE|VI_PROGRESSIVE)) regs[54] |= 0x0001;
 changed |= VI_REGCHANGE(54);

 __setScalingRegs(HorVer.panSizeX,HorVer.dispSizeX,HorVer.threeD);
 __setHorizontalRegs(curtiming,HorVer.adjustedDispPosX,HorVer.dispSizeX);
 __setBBIntervalRegs(curtiming);
 __setPicConfig(HorVer.fbSizeX,HorVer.fbMode,HorVer.panPosX,HorVer.panSizeX,&HorVer.wordPerLine,&HorVer.std,&HorVer.wpl,&HorVer.xof);

 if(fbSet) __setFbbRegs(&HorVer,&HorVer.tfbb,&HorVer.bfbb,&HorVer.rtfbb,&HorVer.rbfbb);

 __setVerticalRegs(HorVer.adjustedDispPosY,HorVer.adjustedDispSizeY,curtiming->equ,curtiming->acv,curtiming->prbOdd,curtiming->prbEven,curtiming->psbOdd,curtiming->psbEven,HorVer.black);
 _CPU_ISR_Restore(level);
}
