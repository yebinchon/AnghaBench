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
struct TYPE_4__ {char const* name; int mask; } ;
struct TYPE_3__ {char const* name; int mask; } ;

/* Variables and functions */
 int IN_BINDTYPE_EMU ; 
 int IN_BINDTYPE_NONE ; 
 int IN_BINDTYPE_PLAYER12 ; 
 int FUNC0 (char const*) ; 
 TYPE_2__* emuctrl_actions ; 
 TYPE_1__* me_ctrl_actions ; 
 int FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,int) ; 

__attribute__((used)) static int FUNC3(const char *val, int *type)
{
	int i;

	*type = IN_BINDTYPE_NONE;
	if (val[0] == 0)
		return 0;
	
	if (FUNC2(val, "player", 6) == 0)
	{
		int player, shift = 0;
		player = FUNC0(val + 6) - 1;

		if ((unsigned int)player > 1)
			return -1;
		if (player == 1)
			shift = 16;

		*type = IN_BINDTYPE_PLAYER12;
		for (i = 0; me_ctrl_actions[i].name != NULL; i++) {
			if (FUNC2(me_ctrl_actions[i].name, val + 8, FUNC1(val + 8)) == 0)
				return me_ctrl_actions[i].mask << shift;
		}
	}
	for (i = 0; emuctrl_actions[i].name != NULL; i++) {
		if (FUNC2(emuctrl_actions[i].name, val, FUNC1(val)) == 0) {
			*type = IN_BINDTYPE_EMU;
			return emuctrl_actions[i].mask;
		}
	}

	return -1;
}