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
typedef  int /*<<< orphan*/  cd_img_type ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CIT_NOT_CD ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PATH_MAX ; 
 int PBTN_CIRCLE ; 
 int PBTN_DOWN ; 
 int PBTN_UP ; 
 int /*<<< orphan*/  PGS_RestartRun ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  engineState ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 unsigned long FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  loadedRomFName ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__*) ; 
 scalar_t__* menuErrorMsg ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  romFileName ; 
 char* FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 

int FUNC14(void)
{
	int menu_sel = 0, menu_sel_max = 1;
	unsigned long inp = 0;
	char curr_path[PATH_MAX], *selfname;
	FILE *tstf;

	FUNC8();

	if ( (tstf = FUNC4(loadedRomFName, "rb")) )
	{
		FUNC3(tstf);
		FUNC13(curr_path, loadedRomFName);
	}
	else
	{
		FUNC5(curr_path, PATH_MAX);
	}

	/* make sure action buttons are not pressed on entering menu */
	FUNC1(menu_sel);
	while (FUNC10(1) & PBTN_CIRCLE) FUNC9(50);

	for (;;)
	{
		FUNC1(menu_sel);
		inp = FUNC6(PBTN_UP|PBTN_DOWN|PBTN_CIRCLE, 0);
		if(inp & PBTN_UP  )  { menu_sel--; if (menu_sel < 0) menu_sel = menu_sel_max; }
		if(inp & PBTN_DOWN)  { menu_sel++; if (menu_sel > menu_sel_max) menu_sel = 0; }
		if(inp & PBTN_CIRCLE)  {
			switch (menu_sel) {
				case 0: // select image
					selfname = FUNC11(curr_path);
					if (selfname) {
						int ret = -1;
						cd_img_type cd_type;
						cd_type = FUNC2(NULL, romFileName);
						if (cd_type != CIT_NOT_CD)
							ret = FUNC0(romFileName, cd_type);
						if (ret != 0) {
							FUNC12(menuErrorMsg, "Load failed, invalid CD image?");
							FUNC7("%s\n", menuErrorMsg);
							continue;
						}
						engineState = PGS_RestartRun;
						return 1;
					}
					break;
				case 1: // insert nothing
					engineState = PGS_RestartRun;
					return 0;
			}
		}
		menuErrorMsg[0] = 0; // clear error msg
	}
}