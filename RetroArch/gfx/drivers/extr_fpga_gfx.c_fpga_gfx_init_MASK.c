#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int width; unsigned int height; int /*<<< orphan*/  is_threaded; scalar_t__ fullscreen; scalar_t__ rgb32; } ;
typedef  TYPE_3__ video_info_t ;
struct TYPE_16__ {scalar_t__ video_font_enable; } ;
struct TYPE_15__ {int /*<<< orphan*/  video_context_driver; } ;
struct TYPE_18__ {TYPE_2__ bools; TYPE_1__ arrays; } ;
typedef  TYPE_4__ settings_t ;
typedef  int /*<<< orphan*/  input_driver_t ;
struct TYPE_19__ {unsigned int width; unsigned int height; scalar_t__ fullscreen; } ;
typedef  TYPE_5__ gfx_ctx_mode_t ;
struct TYPE_20__ {void** input_data; int /*<<< orphan*/  const** input; } ;
typedef  TYPE_6__ gfx_ctx_input_t ;
struct TYPE_21__ {int /*<<< orphan*/  ident; } ;
typedef  TYPE_7__ gfx_ctx_driver_t ;
typedef  void fpga_t ;

/* Variables and functions */
 int /*<<< orphan*/  FONT_DRIVER_RENDER_FPGA ; 
 int /*<<< orphan*/  GFX_CTX_FPGA_API ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int,int) ; 
 TYPE_4__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 scalar_t__ fpga_rgb32 ; 
 int fpga_video_bits ; 
 unsigned int fpga_video_height ; 
 int fpga_video_pitch ; 
 int fpga_video_width ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 TYPE_7__* FUNC8 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__ const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC13 (unsigned int*,unsigned int*) ; 

__attribute__((used)) static void *FUNC14(const video_info_t *video,
      const input_driver_t **input, void **input_data)
{
   unsigned full_x, full_y;
   gfx_ctx_input_t inp;
   gfx_ctx_mode_t mode;
   const gfx_ctx_driver_t *ctx_driver   = NULL;
   unsigned win_width = 0, win_height   = 0;
   unsigned temp_width = 0, temp_height = 0;
   settings_t *settings                 = FUNC2();
   fpga_t *fpga                         = (fpga_t*)FUNC1(1, sizeof(*fpga));

   *input                               = NULL;
   *input_data                          = NULL;

   fpga_video_width                      = video->width;
   fpga_video_height                     = video->height;
   fpga_rgb32                            = video->rgb32;

   fpga_video_bits                       = video->rgb32 ? 32 : 16;

   if (video->rgb32)
      fpga_video_pitch = video->width * 4;
   else
      fpga_video_pitch = video->width * 2;

   FUNC4(fpga);

   ctx_driver = FUNC8(fpga,
         settings->arrays.video_context_driver,
         GFX_CTX_FPGA_API, 1, 0, false);
   if (!ctx_driver)
      goto error;

   FUNC10((const gfx_ctx_driver_t*)ctx_driver);

   FUNC0("[FPGA]: Found FPGA context: %s\n", ctx_driver->ident);

   FUNC7(&mode);

   full_x      = mode.width;
   full_y      = mode.height;
   mode.width  = 0;
   mode.height = 0;

   FUNC0("[FPGA]: Detecting screen resolution %ux%u.\n", full_x, full_y);

   win_width   = video->width;
   win_height  = video->height;

   if (video->fullscreen && (win_width == 0) && (win_height == 0))
   {
      win_width  = full_x;
      win_height = full_y;
   }

   mode.width      = win_width;
   mode.height     = win_height;
   mode.fullscreen = video->fullscreen;

   if (!FUNC11(&mode))
      goto error;

   mode.width     = 0;
   mode.height    = 0;

   FUNC7(&mode);

   temp_width     = mode.width;
   temp_height    = mode.height;
   mode.width     = 0;
   mode.height    = 0;

   /* Get real known video size, which might have been altered by context. */

   if (temp_width != 0 && temp_height != 0)
      FUNC13(&temp_width, &temp_height);

   FUNC12(&temp_width, &temp_height);

   FUNC0("[FPGA]: Using resolution %ux%u\n", temp_width, temp_height);

   inp.input      = input;
   inp.input_data = input_data;

   FUNC9(&inp);

   if (settings->bools.video_font_enable)
      FUNC3(NULL, false,
            video->is_threaded,
            FONT_DRIVER_RENDER_FPGA);

   FUNC0("[FPGA]: Init complete.\n");

   return fpga;

error:
   FUNC6();
   if (fpga)
      FUNC5(fpga);
   return NULL;
}