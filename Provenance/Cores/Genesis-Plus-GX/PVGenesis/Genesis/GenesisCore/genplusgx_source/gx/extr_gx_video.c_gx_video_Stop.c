
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int screen_w; } ;
struct TYPE_5__ {int viWidth; int viXOrigin; } ;
typedef int GXColor ;


 scalar_t__ BLACK ;
 int GX_TRUE ;
 int VIDEO_Configure (TYPE_1__*) ;
 int VIDEO_SetGamma (int ) ;
 int VIDEO_SetPostRetraceCallback (int *) ;
 int VIDEO_SetTrapFilter (int) ;
 int VIDEO_WaitVSync () ;
 int VI_GM_1_0 ;
 int VI_MAX_WIDTH_NTSC ;
 int ** cd_leds ;
 TYPE_3__ config ;
 int * crosshair ;
 int free (int *) ;
 int gxClearScreen (int ) ;
 int gxDrawScreenshot (int) ;
 int gxResetMode (TYPE_1__*,int ) ;
 int gxResetRendering (int) ;
 int gxSetScreen () ;
 int gxTextureClose (int *) ;
 int * md_ntsc ;
 int * sms_ntsc ;
 TYPE_1__* vmode ;

void gx_video_Stop(void)
{

  VIDEO_WaitVSync ();


  if (sms_ntsc) free(sms_ntsc);
  if (md_ntsc) free(md_ntsc);
  sms_ntsc = ((void*)0);
  md_ntsc = ((void*)0);


  gxTextureClose(&crosshair[0]);
  gxTextureClose(&crosshair[1]);


  gxTextureClose(&cd_leds[0][0]);
  gxTextureClose(&cd_leds[0][1]);
  gxTextureClose(&cd_leds[1][0]);
  gxTextureClose(&cd_leds[1][1]);


  gxResetRendering(1);
  gxResetMode(vmode, GX_TRUE);


  gxClearScreen((GXColor)BLACK);
  gxDrawScreenshot(0xff);


  VIDEO_SetPostRetraceCallback(((void*)0));






  vmode->viWidth = config.screen_w;
  vmode->viXOrigin = (VI_MAX_WIDTH_NTSC - vmode->viWidth)/2;
  VIDEO_Configure(vmode);


  gxSetScreen();
}
