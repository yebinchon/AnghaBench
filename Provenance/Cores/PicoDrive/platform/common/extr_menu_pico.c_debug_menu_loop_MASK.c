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
 int PBTN_DOWN ; 
 int PBTN_L ; 
 int PBTN_LEFT ; 
 int PBTN_MA2 ; 
 int PBTN_MA3 ; 
 int PBTN_MBACK ; 
 int PBTN_MOK ; 
 int PBTN_R ; 
 int PBTN_RIGHT ; 
 int PBTN_UP ; 
 int /*<<< orphan*/  PDRAW_32X_ON ; 
 int /*<<< orphan*/  PDRAW_LAYERA_ON ; 
 int /*<<< orphan*/  PDRAW_LAYERB_ON ; 
 int /*<<< orphan*/  PDRAW_SPRITES_HI_ON ; 
 int /*<<< orphan*/  PDRAW_SPRITES_LOW_ON ; 
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned short*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned short*,int) ; 
 char* FUNC7 () ; 
 int /*<<< orphan*/  PicoDrawMask ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int PicoSkipFrame ; 
 int /*<<< orphan*/ * PsndOut ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int) ; 
 int g_menuscreen_h ; 
 scalar_t__ g_menuscreen_ptr ; 
 int g_menuscreen_w ; 
 int FUNC11 (int,int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int me_mfont_h ; 
 int me_sfont_h ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (char*,int) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int,char*,int) ; 

__attribute__((used)) static void FUNC22(void)
{
	int inp, mode = 0;
	int spr_offs = 0, dumped = 0;
	char *tmp;

	while (1)
	{
		FUNC15(1, 0);
		switch (mode)
		{
			case 0: tmp = FUNC3();
				FUNC20(tmp);
				FUNC10(tmp, 0, 0);
				if (dumped) {
					FUNC21(g_menuscreen_w - 6 * me_sfont_h,
						g_menuscreen_h - me_mfont_h, "dumped", 0xffff);
					dumped = 0;
				}
				break;
			case 1: FUNC9();
				break;
			case 2: FUNC19(1, 0);
				FUNC13(1);
				FUNC6((unsigned short *)g_menuscreen_ptr + (g_menuscreen_h/2 - 240/2)*g_menuscreen_w +
					g_menuscreen_w/2 - 320/2, g_menuscreen_w);
				break;
			case 3: FUNC14(g_menuscreen_ptr, 0, g_menuscreen_w * g_menuscreen_h * 2);
				FUNC4(g_menuscreen_ptr, g_menuscreen_w);
				FUNC5((unsigned short *)g_menuscreen_ptr + g_menuscreen_w*120 + g_menuscreen_w/2 + 16,
					g_menuscreen_w, spr_offs);
				FUNC10(FUNC7(), spr_offs, 6);
				break;
			case 4: tmp = FUNC0();
				FUNC10(tmp, 0, 0);
				break;
		}
		FUNC16();

		inp = FUNC11(PBTN_MOK|PBTN_MBACK|PBTN_MA2|PBTN_MA3|PBTN_L|PBTN_R |
					PBTN_UP|PBTN_DOWN|PBTN_LEFT|PBTN_RIGHT, NULL, 70);
		if (inp & PBTN_MBACK) return;
		if (inp & PBTN_L) { mode--; if (mode < 0) mode = 4; }
		if (inp & PBTN_R) { mode++; if (mode > 4) mode = 0; }
		switch (mode)
		{
			case 0:
				if (inp & PBTN_MOK)
					FUNC1();
				if (inp & PBTN_MA3) {
					while (inp & PBTN_MA3)
						inp = FUNC12(NULL, -1);
					FUNC18();
				}
				if ((inp & (PBTN_MA2|PBTN_LEFT)) == (PBTN_MA2|PBTN_LEFT)) {
					FUNC17("dumps", 0777);
					FUNC2();
					while (inp & PBTN_MA2) inp = FUNC12(NULL, -1);
					dumped = 1;
				}
				break;
			case 1:
				if (inp & PBTN_LEFT)  PicoDrawMask ^= PDRAW_LAYERB_ON;
				if (inp & PBTN_RIGHT) PicoDrawMask ^= PDRAW_LAYERA_ON;
				if (inp & PBTN_DOWN)  PicoDrawMask ^= PDRAW_SPRITES_LOW_ON;
				if (inp & PBTN_UP)    PicoDrawMask ^= PDRAW_SPRITES_HI_ON;
				if (inp & PBTN_MA2)   PicoDrawMask ^= PDRAW_32X_ON;
				if (inp & PBTN_MOK) {
					PsndOut = NULL; // just in case
					PicoSkipFrame = 1;
					FUNC8();
					PicoSkipFrame = 0;
					while (inp & PBTN_MOK) inp = FUNC12(NULL, -1);
				}
				break;
			case 3:
				if (inp & PBTN_DOWN)  spr_offs++;
				if (inp & PBTN_UP)    spr_offs--;
				if (spr_offs < 0) spr_offs = 0;
				break;
		}
	}
}