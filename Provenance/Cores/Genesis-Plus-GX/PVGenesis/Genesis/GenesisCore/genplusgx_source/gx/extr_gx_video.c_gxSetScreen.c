
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GX_CopyDisp (int ,int ) ;
 int GX_DrawDone () ;
 int GX_FALSE ;
 int GX_Flush () ;
 int VIDEO_Flush () ;
 int VIDEO_SetNextFramebuffer (int ) ;
 int VIDEO_WaitVSync () ;
 int gx_input_UpdateMenu () ;
 size_t whichfb ;
 int * xfb ;

void gxSetScreen(void)
{
  GX_DrawDone();
  GX_CopyDisp(xfb[whichfb], GX_FALSE);
  GX_Flush();
  VIDEO_SetNextFramebuffer (xfb[whichfb]);
  VIDEO_Flush ();
  VIDEO_WaitVSync ();
  gx_input_UpdateMenu();
}
