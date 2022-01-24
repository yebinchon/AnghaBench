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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  g_screen_ptr ; 
 int g_screen_width ; 
 int /*<<< orphan*/  layer_fb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3(void)
{
	g_screen_ptr = FUNC1(layer_fb);
	FUNC0(g_screen_ptr, g_screen_width * 2);

	// XXX: drain OS event queue here, maybe we'll actually use it someday..
	FUNC2(NULL, NULL, NULL, NULL);
}