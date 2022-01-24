#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int mask; } ;
typedef  TYPE_1__ me_bind_action ;
struct TYPE_6__ {int* KeyBinds; } ;

/* Variables and functions */
 unsigned long CONFIGURABLE_KEYS ; 
 unsigned long PBTN_DOWN ; 
 unsigned long PBTN_HOME ; 
 unsigned long PBTN_PLAY ; 
 unsigned long PBTN_STOP ; 
 unsigned long PBTN_UP ; 
 int FUNC0 (int,int) ; 
 TYPE_4__ currentConfig ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,int,int,int) ; 
 unsigned long FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(const me_bind_action *opts, int opt_cnt, int player_idx)
{
	int sel = 0, menu_sel_max = opt_cnt, prev_select = 0, i;
	unsigned long inp = 0;

	for (;;)
	{
		FUNC1(opts, opt_cnt, player_idx, sel);
		inp = FUNC2(CONFIGURABLE_KEYS|PBTN_HOME);
		if (!(inp & PBTN_HOME)) {
			prev_select = 0;
			if(inp & PBTN_UP  ) { sel--; if (sel < 0) sel = menu_sel_max; continue; }
			if(inp & PBTN_DOWN) { sel++; if (sel > menu_sel_max) sel = 0; continue; }
		}
		if (sel >= opt_cnt) {
			if (inp & (PBTN_PLAY|PBTN_STOP)) break;
			else continue;
		}
		// if we are here, we want to bind/unbind something
		if ((inp & PBTN_HOME) && !prev_select)
			FUNC3(opts[sel].mask);
		prev_select = inp & PBTN_HOME;
		inp &= CONFIGURABLE_KEYS;
		inp &= ~PBTN_HOME;
		for (i = 0; i < 32; i++)
			if (inp & (1 << i)) {
				if (FUNC0(opts[sel].mask, player_idx) >= 2)
				     currentConfig.KeyBinds[i] &= ~opts[sel].mask; // allow to unbind only
				else currentConfig.KeyBinds[i] ^=  opts[sel].mask;
				if (player_idx >= 0 && (currentConfig.KeyBinds[i] & opts[sel].mask)) {
					currentConfig.KeyBinds[i] &= ~(3 << 16);
					currentConfig.KeyBinds[i] |= player_idx << 16;
				}
			}
	}
}