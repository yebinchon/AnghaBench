#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct TYPE_7__ {int /*<<< orphan*/  frame_coords; } ;
struct TYPE_5__ {int /*<<< orphan*/  left; } ;
struct TYPE_6__ {TYPE_1__ top; } ;
struct TYPE_8__ {int p3d_event_pending; scalar_t__ video_mode; size_t current_buffer_top; scalar_t__ supports_parallax_disable; TYPE_3__ menu; TYPE_2__ drawbuffers; int /*<<< orphan*/  shader; } ;
typedef  TYPE_4__ ctr_video_t ;
typedef  int /*<<< orphan*/  ctr_vertex_t ;
typedef  int /*<<< orphan*/  Handle ;
typedef  scalar_t__ APT_HookType ;

/* Variables and functions */
 scalar_t__ APTHOOK_ONRESTORE ; 
 scalar_t__ APTHOOK_ONSUSPEND ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  CTR_TOP_FRAMEBUFFER_HEIGHT ; 
 int /*<<< orphan*/  CTR_TOP_FRAMEBUFFER_WIDTH ; 
 scalar_t__ CTR_VIDEO_MODE_2D_400x240 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GPUREG_EARLYDEPTH_TEST1 ; 
 int /*<<< orphan*/  GPUREG_EARLYDEPTH_TEST2 ; 
 int /*<<< orphan*/  GPU_ALWAYS ; 
 int /*<<< orphan*/  GPU_BLEND_ADD ; 
 int /*<<< orphan*/  GPU_CULL_NONE ; 
 int /*<<< orphan*/  FUNC5 (float,float) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  GPU_ONE_MINUS_SRC_ALPHA ; 
 int /*<<< orphan*/  GPU_PREVIOUS ; 
 int /*<<< orphan*/  GPU_REPLACE ; 
 int /*<<< orphan*/  GPU_SHORT ; 
 int /*<<< orphan*/  GPU_SRC_ALPHA ; 
 int /*<<< orphan*/  GPU_STENCIL_KEEP ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GPU_TEXTURE0 ; 
 int /*<<< orphan*/  GPU_TEXUNIT0 ; 
 int /*<<< orphan*/  GPU_WRITE_COLOR ; 
 int /*<<< orphan*/  GSPGPU_EVENT_P3D ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (int,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ ctr_bottom_screen_enabled ; 
 int /*<<< orphan*/  FUNC21 (int) ; 
 int* FUNC22 () ; 
 int /*<<< orphan*/ * gfxTopLeftFramebuffers ; 
 int /*<<< orphan*/ * gfxTopRightFramebuffers ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC29(APT_HookType hook, void* param)
{
   ctr_video_t *ctr  = (ctr_video_t*)param;

   if(!ctr)
      return;

   if(hook == APTHOOK_ONRESTORE)
   {
      FUNC4(0);
      FUNC25(&ctr->shader);

      FUNC16(NULL,
                      FUNC18(ctr->drawbuffers.top.left),
                      0, 0, CTR_TOP_FRAMEBUFFER_HEIGHT, CTR_TOP_FRAMEBUFFER_WIDTH);

      FUNC5(-1.0f, 0.0f);
      FUNC11(GPU_CULL_NONE);
      FUNC13(false, GPU_ALWAYS, 0x00, 0xFF, 0x00);
      FUNC12(GPU_STENCIL_KEEP, GPU_STENCIL_KEEP, GPU_STENCIL_KEEP);
      FUNC9(0, 0, 0, 0);
      FUNC10(false, GPU_ALWAYS, GPU_WRITE_COLOR);
      FUNC2(GPUREG_EARLYDEPTH_TEST1, 0x1, 0);
      FUNC3(GPUREG_EARLYDEPTH_TEST2, 0);
      FUNC7(GPU_BLEND_ADD, GPU_BLEND_ADD,
                           GPU_SRC_ALPHA, GPU_ONE_MINUS_SRC_ALPHA,
                           GPU_SRC_ALPHA, GPU_ONE_MINUS_SRC_ALPHA);
      FUNC8(false, GPU_ALWAYS, 0x00);
      FUNC15(GPU_TEXUNIT0);
      FUNC14(0, GPU_TEXTURE0, GPU_TEXTURE0, 0, 0, GPU_REPLACE, GPU_REPLACE, 0);
      FUNC14(1, GPU_PREVIOUS, GPU_PREVIOUS, 0, 0, 0, 0, 0);
      FUNC14(2, GPU_PREVIOUS, GPU_PREVIOUS, 0, 0, 0, 0, 0);
      FUNC14(3, GPU_PREVIOUS, GPU_PREVIOUS, 0, 0, 0, 0, 0);
      FUNC14(4, GPU_PREVIOUS, GPU_PREVIOUS, 0, 0, 0, 0, 0);
      FUNC14(5, GPU_PREVIOUS, GPU_PREVIOUS, 0, 0, 0, 0, 0);
      FUNC20(2,
                               FUNC18(ctr->menu.frame_coords),
                               FUNC1(GPU_SHORT, 4) << 0 |
                               FUNC1(GPU_SHORT, 4) << 4,
                               sizeof(ctr_vertex_t));
      FUNC6();
      FUNC19(true);
      FUNC23(GSPGPU_EVENT_P3D, false);
      ctr->p3d_event_pending = false;
   }

   if((hook == APTHOOK_ONSUSPEND) && (ctr->video_mode == CTR_VIDEO_MODE_2D_400x240))
   {
      FUNC24(gfxTopRightFramebuffers[ctr->current_buffer_top],
            gfxTopLeftFramebuffers[ctr->current_buffer_top],
            400 * 240 * 3);
      FUNC17(gfxTopRightFramebuffers[ctr->current_buffer_top], 400 * 240 * 3);
   }

   if ((hook == APTHOOK_ONSUSPEND) && ctr->supports_parallax_disable)
      FUNC21(*(float*)0x1FF81080 != 0.0);

   if((hook == APTHOOK_ONSUSPEND) || (hook == APTHOOK_ONRESTORE))
   {
      Handle lcd_handle;
      u8 not_2DS;
      FUNC0(&not_2DS);
      if(not_2DS && FUNC26(&lcd_handle, "gsp::Lcd") >= 0)
      {
         u32 *cmdbuf = FUNC22();
         cmdbuf[0] = ((hook == APTHOOK_ONSUSPEND) || ctr_bottom_screen_enabled)? 0x00110040: 0x00120040;
         cmdbuf[1] = 2;
         FUNC28(lcd_handle);
         FUNC27(lcd_handle);
      }
   }
}