#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char const* name; char* (* generate_name ) (int /*<<< orphan*/ ,int*) ;int beh; char* help; scalar_t__ var; scalar_t__ data; int /*<<< orphan*/  id; int /*<<< orphan*/  enabled; } ;
typedef  TYPE_1__ menu_entry ;

/* Variables and functions */
#define  MB_NONE 134 
#define  MB_OPT_CUSTOM 133 
#define  MB_OPT_CUSTONOFF 132 
#define  MB_OPT_CUSTRANGE 131 
#define  MB_OPT_ENUM 130 
#define  MB_OPT_ONOFF 129 
#define  MB_OPT_RANGE 128 
 int g_menuscreen_h ; 
 int g_menuscreen_w ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int me_mfont_h ; 
 int me_mfont_w ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 
 int me_sfont_h ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 scalar_t__* menu_error_msg ; 
 int menu_error_time ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,int,char const*,int) ; 
 char* FUNC8 (char const*,char) ; 
 int FUNC9 (char const*) ; 
 char* FUNC10 (int /*<<< orphan*/ ,int*) ; 
 char* FUNC11 (int /*<<< orphan*/ ,int*) ; 
 char* FUNC12 (int /*<<< orphan*/ ,int*) ; 
 char* FUNC13 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC14 (int,int,...) ; 

__attribute__((used)) static void FUNC15(const menu_entry *entries, int sel, void (*draw_more)(void))
{
	const menu_entry *ent, *ent_sel = entries;
	int x, y, w = 0, h = 0;
	int offs, col2_offs = 27 * me_mfont_w;
	int vi_sel_ln = 0;
	const char *name;
	int i, n;

	/* calculate size of menu rect */
	for (ent = entries, i = n = 0; ent->name; ent++, i++)
	{
		int wt;

		if (!ent->enabled)
			continue;

		if (i == sel) {
			ent_sel = ent;
			vi_sel_ln = n;
		}

		name = NULL;
		wt = FUNC9(ent->name) * me_mfont_w;
		if (wt == 0 && ent->generate_name)
			name = ent->generate_name(ent->id, &offs);
		if (name != NULL)
			wt = FUNC9(name) * me_mfont_w;

		if (ent->beh != MB_NONE)
		{
			if (wt > col2_offs)
				col2_offs = wt + me_mfont_w;
			wt = col2_offs;

			switch (ent->beh) {
			case MB_NONE:
				break;
			case MB_OPT_ONOFF:
			case MB_OPT_RANGE:
				wt += me_mfont_w * 3;
				break;
			case MB_OPT_CUSTOM:
			case MB_OPT_CUSTONOFF:
			case MB_OPT_CUSTRANGE:
				name = NULL;
				offs = 0;
				if (ent->generate_name != NULL)
					name = ent->generate_name(ent->id, &offs);
				if (name != NULL)
					wt += (FUNC9(name) + offs) * me_mfont_w;
				break;
			case MB_OPT_ENUM:
				wt += 10 * me_mfont_w;
				break;
			}
		}

		if (wt > w)
			w = wt;
		n++;
	}
	h = n * me_mfont_h;
	w += me_mfont_w * 2; /* selector */

	if (w > g_menuscreen_w) {
		FUNC0("width %d > %d\n", w, g_menuscreen_w);
		w = g_menuscreen_w;
	}
	if (h > g_menuscreen_h) {
		FUNC0("height %d > %d\n", w, g_menuscreen_h);
		h = g_menuscreen_h;
	}

	x = g_menuscreen_w / 2 - w / 2;
	y = g_menuscreen_h / 2 - h / 2;
#ifdef MENU_ALIGN_LEFT
	if (x > 12) x = 12;
#endif

	/* draw */
	FUNC2(1, 0);
	FUNC4(x, y + vi_sel_ln * me_mfont_h, w);
	x += me_mfont_w * 2;

	for (ent = entries; ent->name; ent++)
	{
		const char **names;
		int len, leftname_end = 0;

		if (!ent->enabled)
			continue;

		name = ent->name;
		if (FUNC9(name) == 0) {
			if (ent->generate_name)
				name = ent->generate_name(ent->id, &offs);
		}
		if (name != NULL) {
			FUNC14(x, y, name);
			leftname_end = x + (FUNC9(name) + 1) * me_mfont_w;
		}

		switch (ent->beh) {
		case MB_NONE:
			break;
		case MB_OPT_ONOFF:
			FUNC14(x + col2_offs, y, FUNC1(ent) ? "ON" : "OFF");
			break;
		case MB_OPT_RANGE:
			FUNC14(x + col2_offs, y, "%i", *(int *)ent->var);
			break;
		case MB_OPT_CUSTOM:
		case MB_OPT_CUSTONOFF:
		case MB_OPT_CUSTRANGE:
			name = NULL;
			offs = 0;
			if (ent->generate_name)
				name = ent->generate_name(ent->id, &offs);
			if (name != NULL)
				FUNC14(x + col2_offs + offs * me_mfont_w, y, "%s", name);
			break;
		case MB_OPT_ENUM:
			names = (const char **)ent->data;
			for (i = 0; names[i] != NULL; i++) {
				offs = x + col2_offs;
				len = FUNC9(names[i]);
				if (len > 10)
					offs += (10 - len - 2) * me_mfont_w;
				if (offs < leftname_end)
					offs = leftname_end;
				if (i == *(unsigned char *)ent->var) {
					FUNC14(offs, y, "%s", names[i]);
					break;
				}
			}
			break;
		}

		y += me_mfont_h;
	}

	FUNC5();

	/* display help or message if we have one */
	h = (g_menuscreen_h - h) / 2; // bottom area height
	if (menu_error_msg[0] != 0) {
		if (h >= me_mfont_h + 4)
			FUNC14(5, g_menuscreen_h - me_mfont_h - 4, menu_error_msg);
		else
			FUNC0("menu msg doesn't fit!\n");

		if (FUNC6() - menu_error_time > 2048)
			menu_error_msg[0] = 0;
	}
	else if (ent_sel->help != NULL) {
		const char *tmp = ent_sel->help;
		int l;
		for (l = 0; tmp != NULL && *tmp != 0; l++)
			tmp = FUNC8(tmp + 1, '\n');
		if (h >= l * me_sfont_h + 4)
			for (tmp = ent_sel->help; l > 0; l--, tmp = FUNC8(tmp, '\n') + 1)
				FUNC7(5, g_menuscreen_h - (l * me_sfont_h + 4), tmp, 0xffff);
	}

	FUNC5();

	if (draw_more != NULL)
		draw_more();

	FUNC3();
}