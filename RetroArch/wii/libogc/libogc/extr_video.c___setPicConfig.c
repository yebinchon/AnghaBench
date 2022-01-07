
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;


 int VI_REGCHANGE (int) ;
 scalar_t__ VI_XFBMODE_DF ;
 int changed ;
 int* regs ;

__attribute__((used)) static inline void __setPicConfig(u16 fbSizeX,u32 xfbMode,u16 panPosX,u16 panSizeX,u8 *wordPerLine,u8 *std,u8 *wpl,u8 *xof)
{
 *wordPerLine = (fbSizeX+15)/16;
 *std = *wordPerLine;
 if(xfbMode==VI_XFBMODE_DF) *std <<= 1;

 *xof = panPosX%16;
 *wpl = (*xof+(panSizeX+15))/16;
 regs[36] = (*wpl<<8)|*std;
 changed |= VI_REGCHANGE(36);
}
