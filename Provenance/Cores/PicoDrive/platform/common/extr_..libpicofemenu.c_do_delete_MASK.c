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
typedef  int /*<<< orphan*/  tmp ;

/* Variables and functions */
 int PBTN_MA2 ; 
 int PBTN_MA3 ; 
 int PBTN_MBACK ; 
 int PBTN_MENU ; 
 int g_menuscreen_w ; 
 char* FUNC0 (int,int) ; 
 int FUNC1 (int,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int me_mfont_h ; 
 int me_mfont_w ; 
 int me_sfont_w ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char const*) ; 
 int FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int,int,char*) ; 

__attribute__((used)) static void FUNC10(const char *fpath, const char *fname)
{
	int len, mid, inp;
	const char *nm;
	char tmp[64];

	FUNC3(1, 0);

	len = FUNC8(fname);
	if (len > g_menuscreen_w / me_sfont_w)
		len = g_menuscreen_w / me_sfont_w;

	mid = g_menuscreen_w / 2;
	FUNC9(mid - me_mfont_w * 15 / 2,  8 * me_mfont_h, "About to delete");
	FUNC6(mid - len * me_sfont_w / 2, 9 * me_mfont_h + 5, fname, 0xbdff);
	FUNC9(mid - me_mfont_w * 13 / 2, 11 * me_mfont_h, "Are you sure?");

	nm = FUNC0(-1, -PBTN_MA3);
	FUNC7(tmp, sizeof(tmp), "(%s - confirm, ", nm);
	len = FUNC8(tmp);
	nm = FUNC0(-1, -PBTN_MBACK);
	FUNC7(tmp + len, sizeof(tmp) - len, "%s - cancel)", nm);
	len = FUNC8(tmp);

	FUNC9(mid - me_mfont_w * len / 2, 12 * me_mfont_h, tmp);
	FUNC4();

	while (FUNC2(NULL, 50) & (PBTN_MENU|PBTN_MA2));
	inp = FUNC1(PBTN_MA3|PBTN_MBACK, NULL, 100);
	if (inp & PBTN_MA3)
		FUNC5(fpath);
}