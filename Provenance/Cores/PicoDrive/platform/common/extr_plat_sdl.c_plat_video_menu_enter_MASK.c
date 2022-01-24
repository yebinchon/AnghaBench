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
 int /*<<< orphan*/  g_menuscreen_h ; 
 int /*<<< orphan*/  g_menuscreen_w ; 
 int /*<<< orphan*/  g_screen_ptr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  shadow_fb ; 

void FUNC1(int is_rom_loaded)
{
	FUNC0(g_menuscreen_w, g_menuscreen_h, 0);
	g_screen_ptr = shadow_fb;
}