#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int dirtyPal; } ;
struct TYPE_4__ {TYPE_1__ m; } ;

/* Variables and functions */
 TYPE_2__ Pico ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  g_menubg_src_ptr ; 
 int /*<<< orphan*/  g_screen_ptr ; 
 int g_screen_width ; 

void FUNC3(int no_scale, int do_emu)
{
	FUNC1(g_screen_ptr, g_screen_width * 2);
	FUNC0(NULL, NULL);
	Pico.m.dirtyPal = 1;

	FUNC2(no_scale, do_emu);

	g_menubg_src_ptr = g_screen_ptr;
}