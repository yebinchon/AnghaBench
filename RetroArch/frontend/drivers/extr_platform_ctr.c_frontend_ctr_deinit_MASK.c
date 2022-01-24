#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ frameBuffer; } ;
typedef  TYPE_1__ PrintConsole ;
typedef  int /*<<< orphan*/  Handle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 scalar_t__ FRONTEND_FORK_NONE ; 
 int /*<<< orphan*/  FUNC2 (int,int*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ ctr_fork_mode ; 
 int* FUNC5 () ; 
 int** gfxBottomFramebuffers ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ ** gfxTopRightFramebuffers ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 

__attribute__((used)) static void FUNC17(void* data)
{
   Handle lcd_handle;
   u32 parallax_layer_reg_state;
   u8 not_2DS;
   u8 device_model = 0xFF;

   extern PrintConsole* currentConsole;

   (void)data;

#ifndef IS_SALAMANDER
   /* Note: frontend_ctr_deinit() is normally called when
    * forking to load new content. When this happens, the
    * log messages generated in frontend_ctr_exec() *must*
    * be printed to screen (provided bottom screen is not
    * turned off...), since the 'first core launch' warning
    * can prevent sdcard corruption. We therefore close any
    * existing log file, enable verbose logging and revert
    * to console output. (Normal logging will be resumed
    * once retroarch.cfg has been re-read) */
   FUNC10();
   FUNC15();
   FUNC11(NULL, false);

   if ((gfxBottomFramebuffers[0] == (u8*)currentConsole->frameBuffer)
         && (ctr_fork_mode == FRONTEND_FORK_NONE))
      FUNC16();

   FUNC0(&not_2DS);

   if (not_2DS && FUNC12(&lcd_handle, "gsp::Lcd") >= 0)
   {
      u32* cmdbuf = FUNC5();
      cmdbuf[0]   = 0x00110040;
      cmdbuf[1]   = 2;
      FUNC14(lcd_handle);
      FUNC13(lcd_handle);
   }

   /* Only O3DS and O3DSXL support running in 'dual-framebuffer'
    * mode with the parallax barrier disabled
    * (i.e. these are the only platforms that can use
    * CTR_VIDEO_MODE_2D_400x240 and CTR_VIDEO_MODE_2D_800x240) */
   FUNC1(&device_model); /* (0 = O3DS, 1 = O3DSXL, 2 = N3DS, 3 = 2DS, 4 = N3DSXL, 5 = N2DSXL) */
   if ((device_model == 0) || (device_model == 1))
   {
      parallax_layer_reg_state = (*(float*)0x1FF81080 == 0.0) ? 0x0 : 0x00010001;
      FUNC2(0x202000, &parallax_layer_reg_state, 4);
   }

   FUNC7();
   FUNC9();
   FUNC3();
   FUNC8();
   FUNC4();
   gfxTopRightFramebuffers[0] = NULL;
   gfxTopRightFramebuffers[1] = NULL;
   FUNC6();
#endif
}