#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_9__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_19__ {int /*<<< orphan*/  vfilter; scalar_t__ render; int /*<<< orphan*/  bilinear; scalar_t__ ntsc; scalar_t__ vsync; } ;
struct TYPE_18__ {scalar_t__* system; int /*<<< orphan*/ ** analog; } ;
struct TYPE_17__ {TYPE_2__* regs; } ;
struct TYPE_16__ {int viTVMode; } ;
struct TYPE_15__ {int changed; int w; int x; int h; int y; } ;
struct TYPE_13__ {int h; } ;
struct TYPE_14__ {TYPE_1__ byte; } ;
struct TYPE_12__ {TYPE_3__ viewport; } ;
typedef  int /*<<< orphan*/  GXTexObj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GX_ANISO_1 ; 
 int /*<<< orphan*/  GX_CLAMP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  GX_FALSE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double,double,double,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GX_NEAR ; 
 int /*<<< orphan*/  GX_NEAR_MIP_NEAR ; 
 int /*<<< orphan*/  GX_TEXMAP0 ; 
 int /*<<< orphan*/  GX_TF_RGB565 ; 
 int /*<<< orphan*/  GX_TRUE ; 
 int FUNC8 (int) ; 
 int NO_SYNC ; 
 int FUNC9 (int) ; 
 int SYNC_VIDEO ; 
 scalar_t__ SYSTEM_LIGHTPHASER ; 
 int /*<<< orphan*/  TEX_SIZE ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int VI_NON_INTERLACE ; 
 scalar_t__ audioStarted ; 
 TYPE_10__ bitmap ; 
 scalar_t__** cd_leds ; 
 TYPE_9__ config ; 
 scalar_t__* crosshair ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int gc_pal ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 TYPE_7__ input ; 
 int interlaced ; 
 scalar_t__ odd_frame ; 
 int* reg ; 
 TYPE_4__* rmode ; 
 TYPE_5__ scd ; 
 int /*<<< orphan*/  texturemem ; 
 TYPE_4__** tvmodes ; 
 int vdp_pal ; 
 int vheight ; 
 int video_sync ; 
 int vwidth ; 
 int whichfb ; 
 int /*<<< orphan*/ * xfb ; 

int FUNC20(void)
{
  if (video_sync) return NO_SYNC;

  video_sync = config.vsync && (gc_pal == vdp_pal);

  /* check if display has changed during frame */
  if (bitmap.viewport.changed & 1)
  {
    /* update texture size */
    vwidth = bitmap.viewport.w + (2 * bitmap.viewport.x);
    vheight = bitmap.viewport.h + (2 * bitmap.viewport.y);

    /* interlaced mode */
    if (config.render && interlaced)
    {
      vheight = vheight << 1;
    }

    /* ntsc filter */
    if (config.ntsc)
    {
      vwidth = (reg[12] & 1) ? FUNC8(vwidth) : FUNC9(vwidth);

      /* texel width must remain multiple of 4 */
      vwidth  = (vwidth >> 2) << 2;
    }

    /* initialize texture object */
    GXTexObj texobj;
    FUNC4(&texobj, texturemem, vwidth, vheight, GX_TF_RGB565, GX_CLAMP, GX_CLAMP, GX_FALSE);

    /* configure texture filtering */
    if (!config.bilinear)
    {
      FUNC5(&texobj,GX_NEAR,GX_NEAR_MIP_NEAR,0.0,10.0,0.0,GX_FALSE,GX_FALSE,GX_ANISO_1);
    }

    /* load texture object */
    FUNC7(&texobj, GX_TEXMAP0);

    /* update rendering mode */
    if (config.render)
    {
      rmode = tvmodes[gc_pal*3 + 2];
    }
    else
    {
      rmode = tvmodes[gc_pal*3 + interlaced];
    }

    /* update aspect ratio */
    FUNC19(vwidth);

    /* update GX rendering mode */
    FUNC18(rmode, config.vfilter);

    /* update VI mode */
    FUNC10(rmode);
  }

  /* texture is now directly mapped by the line renderer */

  /* force texture cache update */
  FUNC0(texturemem, TEX_SIZE);
  FUNC6();

  /* render textured quad */
  FUNC15();

  /* lightgun # 1 screen mark */
  if (crosshair[0])
  {
    if (input.system[0] == SYSTEM_LIGHTPHASER)
    {
      FUNC17(crosshair[0], input.analog[0][0],input.analog[0][1]);
    }
    else
    {
      FUNC17(crosshair[0], input.analog[4][0],input.analog[4][1]);
    }
  }

  /* lightgun #2 screen mark */
  if (crosshair[1])
  {
    if (input.system[1] == SYSTEM_LIGHTPHASER)
    {
      FUNC17(crosshair[1], input.analog[4][0],input.analog[4][1]);
    }
    else
    {
      FUNC17(crosshair[1], input.analog[5][0],input.analog[5][1]);
    }
  }

  /* CD LEDS */
  if (cd_leds[1][1])
  {
    /* CD LEDS status */
    u8 mode = scd.regs[0x06 >> 1].byte.h;
    FUNC16(cd_leds[1][(mode >> 1) & 1], cd_leds[0][mode & 1]);
  }

  /* swap XFB */ 
  whichfb ^= 1;

  /* copy EFB to XFB */
  FUNC2();
  FUNC1(xfb[whichfb], GX_TRUE);
  FUNC3();

  /* XFB is ready to be displayed */
  FUNC13(xfb[whichfb]);
  FUNC11();

  if (bitmap.viewport.changed & 1)
  {
    /* clear update flags */
    bitmap.viewport.changed &= ~1;

    /* field synchronization */
    FUNC14();
    if (rmode->viTVMode & VI_NON_INTERLACE)
    {
      FUNC14();
    }
    else while (FUNC12() != odd_frame)
    {
      FUNC14();
    }

    /* Audio DMA need to be resynchronized with VSYNC */                    
    audioStarted = 0;
  }

  return SYNC_VIDEO;
}