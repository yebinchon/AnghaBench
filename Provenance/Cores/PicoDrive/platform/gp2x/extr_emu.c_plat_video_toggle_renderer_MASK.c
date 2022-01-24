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
 int PAHW_32X ; 
 int PicoAHW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 () ; 
 int /*<<< orphan*/ * renderer_names ; 
 int /*<<< orphan*/ * renderer_names32x ; 
 int rendstatus_old ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(int change, int is_menu_call)
{
	FUNC0(change);

	if (is_menu_call)
		return;

	FUNC3();
	rendstatus_old = -1;

	if (PicoAHW & PAHW_32X)
		FUNC1(renderer_names32x[FUNC2()]);
	else
		FUNC1(renderer_names[FUNC2()]);
}