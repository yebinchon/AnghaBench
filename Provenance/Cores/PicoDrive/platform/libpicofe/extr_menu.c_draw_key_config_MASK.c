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
typedef  int /*<<< orphan*/  buff2 ;
typedef  int /*<<< orphan*/  buff ;

/* Variables and functions */
 int /*<<< orphan*/  PBTN_MA2 ; 
 int /*<<< orphan*/  PBTN_MOK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int g_menuscreen_h ; 
 int g_menuscreen_w ; 
 char* FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int me_mfont_h ; 
 int me_mfont_w ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,...) ; 
 int FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int,int,char const*,...) ; 

__attribute__((used)) static void FUNC10(const me_bind_action *opts, int opt_cnt, int player_idx,
		int sel, int dev_id, int dev_count, int is_bind)
{
	char buff[64], buff2[32];
	const char *dev_name;
	int x, y, w, i;

	w = ((player_idx >= 0) ? 20 : 30) * me_mfont_w;
	x = g_menuscreen_w / 2 - w / 2;
	y = (g_menuscreen_h - 4 * me_mfont_h) / 2 - (2 + opt_cnt) * me_mfont_h / 2;
	if (x < me_mfont_w * 2)
		x = me_mfont_w * 2;

	FUNC3(1, 0);
	if (player_idx >= 0)
		FUNC9(x, y, "Player %i controls", player_idx + 1);
	else
		FUNC9(x, y, "Emulator controls");

	y += 2 * me_mfont_h;
	FUNC5(x - me_mfont_w * 2, y + sel * me_mfont_h, w + 2 * me_mfont_w);

	for (i = 0; i < opt_cnt; i++, y += me_mfont_h)
		FUNC9(x, y, "%s : %s", opts[i].name,
			FUNC0(player_idx, opts[i].mask, dev_id));

	FUNC6();

	if (dev_id < 0)
		dev_name = "(all devices)";
	else
		dev_name = FUNC1(dev_id, 0, 1);
	w = FUNC8(dev_name) * me_mfont_w;
	if (w < 30 * me_mfont_w)
		w = 30 * me_mfont_w;
	if (w > g_menuscreen_w)
		w = g_menuscreen_w;

	x = g_menuscreen_w / 2 - w / 2;

	if (!is_bind) {
		FUNC7(buff2, sizeof(buff2), "%s", FUNC2(-1, -PBTN_MOK));
		FUNC7(buff, sizeof(buff), "%s - bind, %s - clear", buff2,
				FUNC2(-1, -PBTN_MA2));
		FUNC9(x, g_menuscreen_h - 4 * me_mfont_h, buff);
	}
	else
		FUNC9(x, g_menuscreen_h - 4 * me_mfont_h, "Press a button to bind/unbind");

	if (dev_count > 1) {
		FUNC9(x, g_menuscreen_h - 3 * me_mfont_h, dev_name);
		FUNC9(x, g_menuscreen_h - 2 * me_mfont_h, "Press left/right for other devs");
	}

	FUNC4();
}