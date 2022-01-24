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
 int /*<<< orphan*/  OPT2_ENTRY_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  opt2_entries ; 

__attribute__((used)) static void FUNC4(int menu_sel)
{
	int tl_x = 80+25, tl_y = 16+50;

	FUNC1();

	FUNC3(tl_x - 16, tl_y + menu_sel*10, 252);

	FUNC0(opt2_entries, OPT2_ENTRY_COUNT, tl_x, tl_y, NULL, NULL);

	FUNC2();
}