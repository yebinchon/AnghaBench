#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_8__ ;
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_12__ {void* viTVMode; } ;
struct TYPE_11__ {void* viTVMode; } ;
struct TYPE_10__ {void* viTVMode; } ;
struct TYPE_9__ {int viTVMode; } ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_BLACK ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GX_TRUE ; 
 int HASPECT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int TEX_SIZE ; 
 int /*<<< orphan*/  TV50hz_576i ; 
 TYPE_8__ TV60hz_240i ; 
 TYPE_7__ TV60hz_240p ; 
 TYPE_6__ TV60hz_480i ; 
 int VASPECT ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  VI_INTERLACE ; 
 int /*<<< orphan*/  VI_NON_INTERLACE ; 
#define  VI_PAL 128 
 void* FUNC11 (int,int /*<<< orphan*/ ) ; 
 void* VI_TVMODE_EURGB60_DS ; 
 void* VI_TVMODE_EURGB60_INT ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 void* FUNC16 (int,int) ; 
 void* screenshot ; 
 void* texturemem ; 
 TYPE_1__* vmode ; 
 int /*<<< orphan*/ ** xfb ; 

void FUNC17(void)
{
  /*
   * Before doing anything else under libogc,
   * Call VIDEO_Init
   */
  FUNC7();

  /* Get the current VIDEO mode then :
      - set menu video mode (480p/576p/480i/576i)
      - set emulator rendering 60hz TV modes (PAL/MPAL/NTSC/EURGB60)
   */
  vmode = FUNC6(NULL);

  /* Adjust display settings */
  switch (vmode->viTVMode >> 2)
  {
    case VI_PAL:  /* 576 lines scaled (PAL 50Hz) */
      TV60hz_240p.viTVMode = VI_TVMODE_EURGB60_DS;
      TV60hz_240i.viTVMode = VI_TVMODE_EURGB60_INT;
      TV60hz_480i.viTVMode = VI_TVMODE_EURGB60_INT;
      break;
    
    default:  /* 480 lines (NTSC, MPAL or PAL 60Hz) */
      TV60hz_240p.viTVMode = FUNC11(vmode->viTVMode >> 2, VI_NON_INTERLACE);
      TV60hz_240i.viTVMode = FUNC11(vmode->viTVMode >> 2, VI_INTERLACE);
      TV60hz_480i.viTVMode = FUNC11(vmode->viTVMode >> 2, VI_INTERLACE);
      break;
  }

  /* Configure VI */
  FUNC4 (vmode);

  /* Configure the framebuffers (double-buffering) */
  xfb[0] = (u32 *) FUNC1((u32 *) FUNC2(&TV50hz_576i));
  xfb[1] = (u32 *) FUNC1((u32 *) FUNC2(&TV50hz_576i));

  /* Define a console */
  FUNC12(xfb[0], 20, 64, 640, 574, 574 * 2);

  /* Clear framebuffers to black */
  FUNC3(vmode, xfb[0], COLOR_BLACK);
  FUNC3(vmode, xfb[1], COLOR_BLACK);

  /* Set the framebuffer to be displayed at next VBlank */
  FUNC9(xfb[0]);

  /* Enable Video Interface */
  FUNC8(FALSE);

  /* Update VIDEO settings for next VBlank */
  FUNC5();

  /* Wait for VBlank */
  FUNC10();
  FUNC10();

  /* Initialize GX */
  FUNC15();
  FUNC14(1);
  FUNC13(vmode, GX_TRUE);

  /* initialize FONT */
  FUNC0();

  /* Initialize textures */
  texturemem = FUNC16(32, TEX_SIZE);
  screenshot = FUNC16(32, HASPECT*VASPECT*4);
}