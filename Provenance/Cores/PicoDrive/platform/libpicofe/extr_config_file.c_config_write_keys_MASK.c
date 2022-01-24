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
struct TYPE_4__ {int mask; int /*<<< orphan*/ * name; } ;
struct TYPE_3__ {int mask; int /*<<< orphan*/ * name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  IN_BINDTYPE_EMU ; 
 int /*<<< orphan*/  IN_BINDTYPE_PLAYER12 ; 
 size_t FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IN_CFG_BIND_COUNT ; 
 int IN_MAX_DEVS ; 
 int FUNC1 (int*) ; 
 TYPE_2__* emuctrl_actions ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int* in_adev ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int*) ; 
 int* FUNC4 (int) ; 
 char* FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int,int) ; 
 TYPE_1__* me_ctrl_actions ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ *,int) ; 

void FUNC9(FILE *f)
{
	int d;

	for (d = 0; d < IN_MAX_DEVS; d++)
	{
		const int *binds = FUNC4(d);
		const char *name = FUNC5(d, 0, 0);
		int k, count = 0;

		if (binds == NULL || name == NULL)
			continue;

		FUNC2(f, "binddev = %s\n", name);
		FUNC3(d, IN_CFG_BIND_COUNT, &count);

		for (k = 0; k < count; k++)
		{
			int i, kbinds, mask;
			char act[32];

			act[0] = act[31] = 0;
			name = FUNC6(d, k);

			kbinds = binds[FUNC0(k, IN_BINDTYPE_PLAYER12)];
			for (i = 0; kbinds && me_ctrl_actions[i].name != NULL; i++) {
				mask = me_ctrl_actions[i].mask;
				if (mask & kbinds) {
					FUNC8(act, me_ctrl_actions[i].name, 31);
					FUNC2(f, "bind %s = player1 %s\n", name, FUNC7(act));
					kbinds &= ~mask;
				}
				mask = me_ctrl_actions[i].mask << 16;
				if (mask & kbinds) {
					FUNC8(act, me_ctrl_actions[i].name, 31);
					FUNC2(f, "bind %s = player2 %s\n", name, FUNC7(act));
					kbinds &= ~mask;
				}
			}

			kbinds = binds[FUNC0(k, IN_BINDTYPE_EMU)];
			for (i = 0; kbinds && emuctrl_actions[i].name != NULL; i++) {
				mask = emuctrl_actions[i].mask;
				if (mask & kbinds) {
					FUNC8(act, emuctrl_actions[i].name, 31);
					FUNC2(f, "bind %s = %s\n", name, FUNC7(act));
					kbinds &= ~mask;
				}
			}
		}

#ifdef ANALOG_BINDS
		for (k = 0; k < array_size(in_adev); k++)
		{
			if (in_adev[k] == d)
				fprintf(f, "bind_analog = %d\n", k);
		}
#endif
	}
}