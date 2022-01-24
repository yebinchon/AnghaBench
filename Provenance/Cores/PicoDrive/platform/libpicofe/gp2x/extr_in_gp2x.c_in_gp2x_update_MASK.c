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
 int /*<<< orphan*/  GP2X_BTN_PUSH ; 
 int IN_BINDTYPE_COUNT ; 
 size_t IN_BINDTYPE_EMU ; 
 int IN_BINDTYPE_PLAYER12 ; 
 size_t FUNC0 (int,int) ; 
 int FUNC1 (int,int const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  in_gp2x_combo_acts ; 
 int in_gp2x_combo_keys ; 
 int FUNC2 () ; 

__attribute__((used)) static int FUNC3(void *drv_data, const int *binds, int *result)
{
	int type_start = 0;
	int i, t, keys;

	keys = FUNC2();

	if (keys & in_gp2x_combo_keys) {
		result[IN_BINDTYPE_EMU] = FUNC1(keys, binds, GP2X_BTN_PUSH,
						in_gp2x_combo_keys, in_gp2x_combo_acts);
		type_start = IN_BINDTYPE_PLAYER12;
	}

	for (i = 0; keys; i++, keys >>= 1) {
		if (!(keys & 1))
			continue;

		for (t = type_start; t < IN_BINDTYPE_COUNT; t++)
			result[t] |= binds[FUNC0(i, t)];
	}

	return 0;
}