
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct _horVer {int xof; scalar_t__ threeD; int adjustedDispPosY; int fbMode; int wordPerLine; int adjustedPanPosY; int panPosX; scalar_t__ rbufAddr; scalar_t__ bufAddr; } ;


 int VI_REGCHANGE (int) ;
 int _SHIFTL (int,int,int) ;
 int _SHIFTR (int,int,int) ;
 int __calcFbbs (int,int ,int ,int ,int ,int ,int*,int*) ;
 int changed ;
 int* regs ;

__attribute__((used)) static inline void __setFbbRegs(struct _horVer *horVer,u32 *tfbb,u32 *bfbb,u32 *rtfbb,u32 *rbfbb)
{
 u32 flag;
 __calcFbbs((u32)horVer->bufAddr,horVer->panPosX,horVer->adjustedPanPosY,horVer->wordPerLine,horVer->fbMode,horVer->adjustedDispPosY,tfbb,bfbb);
 if(horVer->threeD) __calcFbbs((u32)horVer->rbufAddr,horVer->panPosX,horVer->adjustedPanPosY,horVer->wordPerLine,horVer->fbMode,horVer->adjustedDispPosY,rtfbb,rbfbb);

 flag = 1;
 if((*tfbb)<0x01000000 && (*bfbb)<0x01000000
  && (*rtfbb)<0x01000000 && (*rbfbb)<0x01000000) flag = 0;

 if(flag) {
  *tfbb >>= 5;
  *bfbb >>= 5;
  *rtfbb >>= 5;
  *rbfbb >>= 5;
 }

 regs[14] = _SHIFTL(flag,12,1)|_SHIFTL(horVer->xof,8,4)|_SHIFTR(*tfbb,16,8);
 regs[15] = *tfbb&0xffff;
 changed |= VI_REGCHANGE(14);
 changed |= VI_REGCHANGE(15);

 regs[18] = _SHIFTR(*bfbb,16,8);
 regs[19] = *bfbb&0xffff;
 changed |= VI_REGCHANGE(18);
 changed |= VI_REGCHANGE(19);

 if(horVer->threeD) {
  regs[16] = _SHIFTR(*rtfbb,16,8);
  regs[17] = *rtfbb&0xffff;
  changed |= VI_REGCHANGE(16);
  changed |= VI_REGCHANGE(17);

  regs[20] = _SHIFTR(*rbfbb,16,8);
  regs[21] = *rbfbb&0xffff;
  changed |= VI_REGCHANGE(20);
  changed |= VI_REGCHANGE(21);
 }
}
