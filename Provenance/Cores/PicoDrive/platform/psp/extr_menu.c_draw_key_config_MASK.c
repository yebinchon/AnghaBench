#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  mask; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ me_bind_action ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,char*,...) ; 

__attribute__((used)) static void FUNC5(const me_bind_action *opts, int opt_cnt, int player_idx, int sel)
{
	int x, y, tl_y = 16+20, i;

	FUNC1();
	if (player_idx >= 0) {
		FUNC4(80+80, 16, "Player %i controls", player_idx + 1);
		x = 80+80;
	} else {
		FUNC4(80+80, 16, "Emulator controls");
		x = 80+40;
	}

	FUNC3(x - 16, tl_y + sel*10, (player_idx >= 0) ? 66 : 130);

	y = tl_y;
	for (i = 0; i < opt_cnt; i++, y+=10)
		FUNC4(x, y, "%s : %s", opts[i].name, FUNC0(player_idx, opts[i].mask));

	FUNC4(x, y, "Done");

	if (sel < opt_cnt) {
		FUNC4(80+30, 220, "Press a button to bind/unbind");
		FUNC4(80+30, 230, "Use SELECT to clear");
		FUNC4(80+30, 240, "To bind UP/DOWN, hold SELECT");
		FUNC4(80+30, 250, "Select \"Done\" to exit");
	} else {
		FUNC4(80+30, 230, "Use Options -> Save cfg");
		FUNC4(80+30, 240, "to save controls");
		FUNC4(80+30, 250, "Press X or O to exit");
	}
	FUNC2();
}