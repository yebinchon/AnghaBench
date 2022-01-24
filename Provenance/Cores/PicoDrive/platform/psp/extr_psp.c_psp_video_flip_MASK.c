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
 int /*<<< orphan*/  PSP_DISPLAY_PIXEL_FORMAT_565 ; 
 int /*<<< orphan*/  PSP_DISPLAY_SETBUF_IMMEDIATE ; 
 int /*<<< orphan*/  PSP_DISPLAY_SETBUF_NEXTFRAME ; 
 int /*<<< orphan*/  VRAM_FB0 ; 
 int /*<<< orphan*/  VRAM_FB1 ; 
 int current_screen ; 
 int /*<<< orphan*/  psp_screen ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(int wait_vsync)
{
	if (wait_vsync) FUNC1();
	FUNC0(psp_screen, 512, PSP_DISPLAY_PIXEL_FORMAT_565,
		wait_vsync ? PSP_DISPLAY_SETBUF_IMMEDIATE : PSP_DISPLAY_SETBUF_NEXTFRAME);
	current_screen ^= 1;
	psp_screen = current_screen ? VRAM_FB0 : VRAM_FB1;
}