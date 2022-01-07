
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COLOR_BLACK ;
 int FONT_Shutdown () ;
 int VIDEO_ClearFrameBuffer (int ,int ,int ) ;
 int VIDEO_Flush () ;
 int VIDEO_WaitVSync () ;
 int free (scalar_t__) ;
 scalar_t__ screenshot ;
 scalar_t__ texturemem ;
 int vmode ;
 size_t whichfb ;
 int * xfb ;

void gx_video_Shutdown(void)
{
  if (texturemem) free(texturemem);
  if (screenshot) free(screenshot);
  FONT_Shutdown();
  VIDEO_ClearFrameBuffer(vmode, xfb[whichfb], COLOR_BLACK);
  VIDEO_Flush();
  VIDEO_WaitVSync();
}
