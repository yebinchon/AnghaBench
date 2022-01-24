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
struct bios_names_t {scalar_t__* jp; scalar_t__* eu; scalar_t__* us; } ;
typedef  int menu_id ;

/* Variables and functions */
 int /*<<< orphan*/  CDOPT_ENTRY_COUNT ; 
 int MA_CDOPT_DONE ; 
 int MA_CDOPT_READAHEAD ; 
#define  MA_CDOPT_TESTBIOS_EUR 130 
#define  MA_CDOPT_TESTBIOS_JAP 129 
#define  MA_CDOPT_TESTBIOS_USA 128 
 unsigned long PBTN_CIRCLE ; 
 unsigned long PBTN_DOWN ; 
 unsigned long PBTN_LEFT ; 
 unsigned long PBTN_RIGHT ; 
 unsigned long PBTN_START ; 
 unsigned long PBTN_UP ; 
 unsigned long PBTN_X ; 
 int /*<<< orphan*/  PGS_ReloadRom ; 
 int PicoCDBuffers ; 
 int /*<<< orphan*/  cdopt_entries ; 
 int /*<<< orphan*/  FUNC0 (int,struct bios_names_t*) ; 
 scalar_t__ FUNC1 (int,char**) ; 
 int /*<<< orphan*/  engineState ; 
 unsigned long FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__* menuErrorMsg ; 
 scalar_t__* romFileName ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,char*) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,char*,int) ; 

__attribute__((used)) static void FUNC8(void)
{
	static int menu_sel = 0;
	int menu_sel_max = 10;
	unsigned long inp = 0;
	struct bios_names_t bios_names;
	menu_id selected_id;
	char *bios, *p;

	if (FUNC1(4, &bios)) { // US
		for (p = bios+FUNC6(bios)-1; p > bios && *p != '/'; p--);
		if (*p == '/') p++;
		FUNC7(bios_names.us, p, sizeof(bios_names.us)); bios_names.us[sizeof(bios_names.us)-1] = 0;
	} else	FUNC5(bios_names.us, "NOT FOUND");

	if (FUNC1(8, &bios)) { // EU
		for (p = bios+FUNC6(bios)-1; p > bios && *p != '/'; p--);
		if (*p == '/') p++;
		FUNC7(bios_names.eu, p, sizeof(bios_names.eu)); bios_names.eu[sizeof(bios_names.eu)-1] = 0;
	} else	FUNC5(bios_names.eu, "NOT FOUND");

	if (FUNC1(1, &bios)) { // JP
		for (p = bios+FUNC6(bios)-1; p > bios && *p != '/'; p--);
		if (*p == '/') p++;
		FUNC7(bios_names.jp, p, sizeof(bios_names.jp)); bios_names.jp[sizeof(bios_names.jp)-1] = 0;
	} else	FUNC5(bios_names.jp, "NOT FOUND");

	menuErrorMsg[0] = 0;

	for (;;)
	{
		FUNC0(menu_sel, &bios_names);
		inp = FUNC2(PBTN_UP|PBTN_DOWN|PBTN_LEFT|PBTN_RIGHT|PBTN_X|PBTN_CIRCLE|PBTN_START, 0);
		if (inp & PBTN_UP  ) { menu_sel--; if (menu_sel < 0) menu_sel = menu_sel_max; }
		if (inp & PBTN_DOWN) { menu_sel++; if (menu_sel > menu_sel_max) menu_sel = 0; }
		selected_id = FUNC3(cdopt_entries, CDOPT_ENTRY_COUNT, menu_sel);
		if (inp & (PBTN_LEFT|PBTN_RIGHT)) { // multi choise
			if (!FUNC4(cdopt_entries, CDOPT_ENTRY_COUNT, selected_id, (inp&PBTN_RIGHT) ? 1 : 0) &&
			    selected_id == MA_CDOPT_READAHEAD) {
				if (inp & PBTN_LEFT) {
					PicoCDBuffers >>= 1;
					if (PicoCDBuffers < 2) PicoCDBuffers = 0;
				} else {
					if (PicoCDBuffers < 2) PicoCDBuffers = 2;
					else PicoCDBuffers <<= 1;
					if (PicoCDBuffers > 8*1024) PicoCDBuffers = 8*1024; // 16M
				}
			}
		}
		if (inp & PBTN_CIRCLE) // toggleable options
			if (!FUNC4(cdopt_entries, CDOPT_ENTRY_COUNT, selected_id, 1) &&
			    selected_id == MA_CDOPT_DONE) {
				return;
			}
		if (inp & PBTN_START) {
			switch (selected_id) { // BIOS testers
				case MA_CDOPT_TESTBIOS_USA:
					if (FUNC1(4, &bios)) { // test US
						FUNC5(romFileName, bios);
						engineState = PGS_ReloadRom;
						return;
					}
					break;
				case MA_CDOPT_TESTBIOS_EUR:
					if (FUNC1(8, &bios)) { // test EU
						FUNC5(romFileName, bios);
						engineState = PGS_ReloadRom;
						return;
					}
					break;
				case MA_CDOPT_TESTBIOS_JAP:
					if (FUNC1(1, &bios)) { // test JP
						FUNC5(romFileName, bios);
						engineState = PGS_ReloadRom;
						return;
					}
					break;
				default:
					break;
			}
		}
		if (inp & PBTN_X) return;
	}
}