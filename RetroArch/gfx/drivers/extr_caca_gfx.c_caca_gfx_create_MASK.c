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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  caca_cv ; 
 int /*<<< orphan*/  caca_display ; 
 int /*<<< orphan*/  caca_dither ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ caca_rgb32 ; 
 scalar_t__ caca_video_height ; 
 int /*<<< orphan*/  caca_video_pitch ; 
 scalar_t__ caca_video_width ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static void FUNC6(void)
{
   caca_display = FUNC0(NULL);
   caca_cv = FUNC2(caca_display);

   if(!caca_video_width || !caca_video_height)
   {
      caca_video_width = FUNC4(caca_cv);
      caca_video_height = FUNC3(caca_cv);
   }

   if (caca_rgb32)
      caca_dither = FUNC1(32, caca_video_width, caca_video_height, caca_video_pitch,
                            0x00ff0000, 0xff00, 0xff, 0x0);
   else
      caca_dither = FUNC1(16, caca_video_width, caca_video_height, caca_video_pitch,
                            0xf800, 0x7e0, 0x1f, 0x0);

   FUNC5(&caca_video_width, &caca_video_height);
}