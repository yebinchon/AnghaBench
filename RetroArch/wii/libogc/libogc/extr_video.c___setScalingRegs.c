
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef scalar_t__ s32 ;


 int VI_REGCHANGE (int) ;
 int _SHIFTL (int,int,int) ;
 int changed ;
 int* regs ;

__attribute__((used)) static void __setScalingRegs(u16 panSizeX,u16 dispSizeX,s32 threeD)
{
 if(threeD) panSizeX = _SHIFTL(panSizeX,1,16);
 if(panSizeX<dispSizeX) {
  regs[37] = 0x1000|((dispSizeX+(_SHIFTL(panSizeX,8,16)-1))/dispSizeX);
  regs[56] = panSizeX;
  changed |= VI_REGCHANGE(37);
  changed |= VI_REGCHANGE(56);
 } else {
  regs[37] = 0x100;
  changed |= VI_REGCHANGE(37);
 }
}
