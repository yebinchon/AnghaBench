
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int u8 ;
struct TYPE_19__ {int vfilter; scalar_t__ render; int bilinear; scalar_t__ ntsc; scalar_t__ vsync; } ;
struct TYPE_18__ {scalar_t__* system; int ** analog; } ;
struct TYPE_17__ {TYPE_2__* regs; } ;
struct TYPE_16__ {int viTVMode; } ;
struct TYPE_15__ {int changed; int w; int x; int h; int y; } ;
struct TYPE_13__ {int h; } ;
struct TYPE_14__ {TYPE_1__ byte; } ;
struct TYPE_12__ {TYPE_3__ viewport; } ;
typedef int GXTexObj ;


 int DCFlushRange (int ,int ) ;
 int GX_ANISO_1 ;
 int GX_CLAMP ;
 int GX_CopyDisp (int ,int ) ;
 int GX_DrawDone () ;
 int GX_FALSE ;
 int GX_Flush () ;
 int GX_InitTexObj (int *,int ,int,int,int ,int ,int ,int ) ;
 int GX_InitTexObjLOD (int *,int ,int ,double,double,double,int ,int ,int ) ;
 int GX_InvalidateTexAll () ;
 int GX_LoadTexObj (int *,int ) ;
 int GX_NEAR ;
 int GX_NEAR_MIP_NEAR ;
 int GX_TEXMAP0 ;
 int GX_TF_RGB565 ;
 int GX_TRUE ;
 int MD_NTSC_OUT_WIDTH (int) ;
 int NO_SYNC ;
 int SMS_NTSC_OUT_WIDTH (int) ;
 int SYNC_VIDEO ;
 scalar_t__ SYSTEM_LIGHTPHASER ;
 int TEX_SIZE ;
 int VIDEO_Configure (TYPE_4__*) ;
 int VIDEO_Flush () ;
 scalar_t__ VIDEO_GetNextField () ;
 int VIDEO_SetNextFramebuffer (int ) ;
 int VIDEO_WaitVSync () ;
 int VI_NON_INTERLACE ;
 scalar_t__ audioStarted ;
 TYPE_10__ bitmap ;
 scalar_t__** cd_leds ;
 TYPE_9__ config ;
 scalar_t__* crosshair ;
 int draw_square () ;
 int gc_pal ;
 int gxDrawCdLeds (scalar_t__,scalar_t__) ;
 int gxDrawCrosshair (scalar_t__,int ,int ) ;
 int gxResetMode (TYPE_4__*,int ) ;
 int gxResetScaler (int) ;
 TYPE_7__ input ;
 int interlaced ;
 scalar_t__ odd_frame ;
 int* reg ;
 TYPE_4__* rmode ;
 TYPE_5__ scd ;
 int texturemem ;
 TYPE_4__** tvmodes ;
 int vdp_pal ;
 int vheight ;
 int video_sync ;
 int vwidth ;
 int whichfb ;
 int * xfb ;

int gx_video_Update(void)
{
  if (video_sync) return NO_SYNC;

  video_sync = config.vsync && (gc_pal == vdp_pal);


  if (bitmap.viewport.changed & 1)
  {

    vwidth = bitmap.viewport.w + (2 * bitmap.viewport.x);
    vheight = bitmap.viewport.h + (2 * bitmap.viewport.y);


    if (config.render && interlaced)
    {
      vheight = vheight << 1;
    }


    if (config.ntsc)
    {
      vwidth = (reg[12] & 1) ? MD_NTSC_OUT_WIDTH(vwidth) : SMS_NTSC_OUT_WIDTH(vwidth);


      vwidth = (vwidth >> 2) << 2;
    }


    GXTexObj texobj;
    GX_InitTexObj(&texobj, texturemem, vwidth, vheight, GX_TF_RGB565, GX_CLAMP, GX_CLAMP, GX_FALSE);


    if (!config.bilinear)
    {
      GX_InitTexObjLOD(&texobj,GX_NEAR,GX_NEAR_MIP_NEAR,0.0,10.0,0.0,GX_FALSE,GX_FALSE,GX_ANISO_1);
    }


    GX_LoadTexObj(&texobj, GX_TEXMAP0);


    if (config.render)
    {
      rmode = tvmodes[gc_pal*3 + 2];
    }
    else
    {
      rmode = tvmodes[gc_pal*3 + interlaced];
    }


    gxResetScaler(vwidth);


    gxResetMode(rmode, config.vfilter);


    VIDEO_Configure(rmode);
  }




  DCFlushRange(texturemem, TEX_SIZE);
  GX_InvalidateTexAll();


  draw_square();


  if (crosshair[0])
  {
    if (input.system[0] == SYSTEM_LIGHTPHASER)
    {
      gxDrawCrosshair(crosshair[0], input.analog[0][0],input.analog[0][1]);
    }
    else
    {
      gxDrawCrosshair(crosshair[0], input.analog[4][0],input.analog[4][1]);
    }
  }


  if (crosshair[1])
  {
    if (input.system[1] == SYSTEM_LIGHTPHASER)
    {
      gxDrawCrosshair(crosshair[1], input.analog[4][0],input.analog[4][1]);
    }
    else
    {
      gxDrawCrosshair(crosshair[1], input.analog[5][0],input.analog[5][1]);
    }
  }


  if (cd_leds[1][1])
  {

    u8 mode = scd.regs[0x06 >> 1].byte.h;
    gxDrawCdLeds(cd_leds[1][(mode >> 1) & 1], cd_leds[0][mode & 1]);
  }


  whichfb ^= 1;


  GX_DrawDone();
  GX_CopyDisp(xfb[whichfb], GX_TRUE);
  GX_Flush();


  VIDEO_SetNextFramebuffer(xfb[whichfb]);
  VIDEO_Flush();

  if (bitmap.viewport.changed & 1)
  {

    bitmap.viewport.changed &= ~1;


    VIDEO_WaitVSync();
    if (rmode->viTVMode & VI_NON_INTERLACE)
    {
      VIDEO_WaitVSync();
    }
    else while (VIDEO_GetNextField() != odd_frame)
    {
      VIDEO_WaitVSync();
    }


    audioStarted = 0;
  }

  return SYNC_VIDEO;
}
