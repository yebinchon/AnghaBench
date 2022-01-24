#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int screen_w; } ;
struct TYPE_5__ {int viWidth; int viXOrigin; } ;
typedef  int /*<<< orphan*/  GXColor ;

/* Variables and functions */
 scalar_t__ BLACK ; 
 int /*<<< orphan*/  GX_TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  VI_GM_1_0 ; 
 int VI_MAX_WIDTH_NTSC ; 
 int /*<<< orphan*/ ** cd_leds ; 
 TYPE_3__ config ; 
 int /*<<< orphan*/ * crosshair ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * md_ntsc ; 
 int /*<<< orphan*/ * sms_ntsc ; 
 TYPE_1__* vmode ; 

void FUNC12(void)
{
  /* wait for next VBLANK */
  FUNC4 ();

  /* unallocate NTSC filters */
  if (sms_ntsc) FUNC5(sms_ntsc);
  if (md_ntsc) FUNC5(md_ntsc);
  sms_ntsc = NULL;
  md_ntsc = NULL;

  /* lightgun textures */
  FUNC11(&crosshair[0]);
  FUNC11(&crosshair[1]);

  /* CD leds textures */
  FUNC11(&cd_leds[0][0]);
  FUNC11(&cd_leds[0][1]);
  FUNC11(&cd_leds[1][0]);
  FUNC11(&cd_leds[1][1]);

  /* GX menu rendering */
  FUNC9(1);
  FUNC8(vmode, GX_TRUE);

  /* render game snapshot */
  FUNC6((GXColor)BLACK);
  FUNC7(0xff);

  /* default VI settings */
  FUNC2(NULL);
#ifdef HW_RVL
  VIDEO_SetTrapFilter(1);
  VIDEO_SetGamma(VI_GM_1_0);
#endif

  /* adjust TV width */
  vmode->viWidth    = config.screen_w;
  vmode->viXOrigin  = (VI_MAX_WIDTH_NTSC - vmode->viWidth)/2;
  FUNC0(vmode);

  /* wait for VSYNC */
  FUNC10();
}