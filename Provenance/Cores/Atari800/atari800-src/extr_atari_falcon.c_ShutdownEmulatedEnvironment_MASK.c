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
typedef  int /*<<< orphan*/  ULONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  Original_Log_base ; 
 int /*<<< orphan*/  Original_Phys_base ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  load_r ; 
 scalar_t__ new_videl_mode_valid ; 
 scalar_t__ original_videl_settings ; 
 int /*<<< orphan*/ * p_str_p ; 
 int /*<<< orphan*/  rem_kb ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(void)
{
	if (new_videl_mode_valid) {
		/* restore original VIDEL mode */
		p_str_p = (ULONG *) original_videl_settings;
		FUNC1(load_r);
		new_videl_mode_valid = 0;
		(void)FUNC2(Original_Log_base, Original_Phys_base, -1, -1);
	}

	FUNC3();

	FUNC1(rem_kb);	/* original keyboard routine */

	FUNC0(4, 8);		/* joystick disable */
}