
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
typedef int f32 ;


 int __GX_GetNumXfbLines (int,int) ;

f32 GX_GetYScaleFactor(u16 efbHeight,u16 xfbHeight)
{
 u32 yScale,xfblines,cnt;
 f32 yscale;

 yscale = (f32)efbHeight/(f32)xfbHeight;
 yScale = (u32)((f32)256.0/yscale)&0x1ff;

 cnt = xfbHeight;
 xfblines = __GX_GetNumXfbLines(efbHeight,yScale);
 while(xfblines>=xfbHeight) {
  yscale = (f32)(cnt--)/(f32)efbHeight;
  yScale = (u32)((f32)256.0/yscale)&0x1ff;
  xfblines = __GX_GetNumXfbLines(efbHeight,yScale);
 }

 while(xfblines<xfbHeight) {
  yscale = (f32)(cnt++)/(f32)efbHeight;
  yScale = (u32)((f32)256.0/yscale)&0x1ff;
  xfblines = __GX_GetNumXfbLines(efbHeight,yScale);
 }
 return yscale;
}
