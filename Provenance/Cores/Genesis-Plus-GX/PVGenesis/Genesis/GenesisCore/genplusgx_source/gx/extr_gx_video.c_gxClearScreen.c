
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GXColor ;


 int GX_CopyDisp (int ,int ) ;
 int GX_Flush () ;
 int GX_SetCopyClear (int ,int) ;
 int GX_TRUE ;
 int whichfb ;
 int * xfb ;

void gxClearScreen(GXColor color)
{
  whichfb ^= 1;
  GX_SetCopyClear(color,0x00ffffff);
  GX_CopyDisp(xfb[whichfb], GX_TRUE);
  GX_Flush();
}
