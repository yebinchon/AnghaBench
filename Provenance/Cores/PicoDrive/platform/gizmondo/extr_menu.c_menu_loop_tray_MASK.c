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
 int FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int PBTN_DOWN ; 
 int PBTN_PLAY ; 
 int PBTN_UP ; 
 int /*<<< orphan*/  PGS_RestartRun ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  engineState ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 unsigned long FUNC8 (int) ; 
 int /*<<< orphan*/  loadedRomFName ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__*) ; 
 scalar_t__* menuErrorMsg ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  romFileName ; 
 char* FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 

int FUNC14(void)
{
	int menu_sel = 0, menu_sel_max = 1;
	unsigned long inp = 0;
	char curr_path[MAX_PATH], *selfname;
	FILE *tstf;

	FUNC10();

	if ( (tstf = FUNC6(loadedRomFName, "rb")) )
	{
		FUNC5(tstf);
		FUNC13(curr_path, loadedRomFName);
	}
	else
	{
		FUNC7(curr_path, MAX_PATH);
	}

	/* make sure action buttons are not pressed on entering menu */
	FUNC3(menu_sel);
	while (FUNC0() & PBTN_PLAY) FUNC2(50);

	for (;;)
	{
		FUNC3(menu_sel);
		inp = FUNC8(PBTN_UP|PBTN_DOWN|PBTN_PLAY);
		if(inp & PBTN_UP  )  { menu_sel--; if (menu_sel < 0) menu_sel = menu_sel_max; }
		if(inp & PBTN_DOWN)  { menu_sel++; if (menu_sel > menu_sel_max) menu_sel = 0; }
		if(inp & PBTN_PLAY)  {
			switch (menu_sel) {
				case 0: // select image
					selfname = FUNC11(curr_path);
					if (selfname) {
						int ret = -1;
						cd_img_type cd_type;
						cd_type = FUNC4(NULL, romFileName);
						if (cd_type != CIT_NOT_CD)
							ret = FUNC1(romFileName, cd_type);
						if (ret != 0) {
							FUNC12(menuErrorMsg, "Load failed, invalid CD image?");
							FUNC9("%s\n", menuErrorMsg);
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