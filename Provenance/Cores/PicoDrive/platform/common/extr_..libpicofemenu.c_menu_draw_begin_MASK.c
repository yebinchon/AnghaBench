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
 int borders_pending ; 
 scalar_t__ g_border_style ; 
 int /*<<< orphan*/  g_menubg_ptr ; 
 int g_menuscreen_h ; 
 int /*<<< orphan*/  g_menuscreen_ptr ; 
 int g_menuscreen_w ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(int need_bg, int no_borders)
{
	FUNC3();

	FUNC2();
	borders_pending = g_border_style && !no_borders;

	if (need_bg) {
		if (g_border_style && no_borders) {
			FUNC1(g_menuscreen_ptr, g_menubg_ptr,
				g_menuscreen_w * g_menuscreen_h, 1);
		}
		else {
			FUNC0(g_menuscreen_ptr, g_menubg_ptr,
				g_menuscreen_w * g_menuscreen_h * 2);
		}
	}
}