#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  GFX_BOTTOM ; 
 int /*<<< orphan*/  GFX_TOP ; 
 int /*<<< orphan*/  GSP_BGR8_OES ; 
 int /*<<< orphan*/  GSP_RGB565_OES ; 
 int /*<<< orphan*/  __ctr_patch_services ; 
 void* audio_ctr_csnd ; 
 void* audio_ctr_dsp ; 
 void* audio_null ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__* gfxBottomFramebuffers ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* gfxTopLeftFramebuffers ; 
 scalar_t__* gfxTopRightFramebuffers ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static void FUNC15(void* data)
{
#ifndef IS_SALAMANDER
   (void)data;

   FUNC14();

   FUNC4(GSP_BGR8_OES, GSP_RGB565_OES, false);

   u32 topSize               = 400 * 240 * 3;
   u32 bottomSize            = 320 * 240 * 2;
   FUNC8(gfxTopLeftFramebuffers [0]);
   FUNC8(gfxTopLeftFramebuffers [1]);
   FUNC8(gfxBottomFramebuffers  [0]);
   FUNC8(gfxBottomFramebuffers  [1]);
   FUNC8(gfxTopRightFramebuffers[0]);
   FUNC8(gfxTopRightFramebuffers[1]);

   gfxTopLeftFramebuffers [0] = FUNC7(topSize * 2);
   gfxTopRightFramebuffers[0] = gfxTopLeftFramebuffers[0] + topSize;

   gfxTopLeftFramebuffers [1] = FUNC7(topSize * 2);
   gfxTopRightFramebuffers[1] = gfxTopLeftFramebuffers[1] + topSize;

   gfxBottomFramebuffers  [0] = FUNC7(bottomSize);
   gfxBottomFramebuffers  [1] = FUNC7(bottomSize);

   FUNC6(GFX_TOP, 0);
   FUNC6(GFX_BOTTOM, 0);

   FUNC5(true);
   FUNC1(GFX_BOTTOM, NULL);

   /* enable access to all service calls when possible. */
   if (&svchax_init)
   {
      FUNC11(false);
      FUNC13(__ctr_patch_services);
   }
   FUNC11(true);

   if (FUNC2() != 0)
      audio_ctr_csnd = audio_null;
   FUNC3();
   if (FUNC10() != 0)
      audio_ctr_dsp = audio_null;
   FUNC0();
   FUNC12();
   FUNC9();
#endif
}