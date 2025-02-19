
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int MEM_VIRTUAL_TO_PHYSICAL (int) ;
 int VI_XFBMODE_DF ;

__attribute__((used)) static inline void __calcFbbs(u32 bufAddr,u16 panPosX,u16 panPosY,u8 wordperline,u32 xfbMode,u16 dispPosY,u32 *tfbb,u32 *bfbb)
{
 u32 bytesPerLine,tmp;

 panPosX &= 0xfff0;
 bytesPerLine = (wordperline<<5)&0x1fe0;
 *tfbb = bufAddr+((panPosX<<5)+(panPosY*bytesPerLine));
 *bfbb = *tfbb;
 if(xfbMode==VI_XFBMODE_DF) *bfbb = *tfbb+bytesPerLine;

 if(dispPosY%2) {
  tmp = *tfbb;
  *tfbb = *bfbb;
  *bfbb = tmp;
 }

 *tfbb = MEM_VIRTUAL_TO_PHYSICAL(*tfbb);
 *bfbb = MEM_VIRTUAL_TO_PHYSICAL(*bfbb);
}
