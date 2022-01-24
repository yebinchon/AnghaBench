#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  menu_id ;
struct TYPE_2__ {int EmuOpt; } ;

/* Variables and functions */
#define  MA_OPT_ADV_OPTS 137 
#define  MA_OPT_CONFIRM_STATES 136 
#define  MA_OPT_LOADCFG 135 
#define  MA_OPT_REGION 134 
#define  MA_OPT_RENDERER 133 
#define  MA_OPT_SAVECFG 132 
#define  MA_OPT_SAVECFG_GAME 131 
#define  MA_OPT_SAVE_SLOT 130 
#define  MA_OPT_SCD_OPTS 129 
#define  MA_OPT_SOUND_QUALITY 128 
 int /*<<< orphan*/  OPT_ENTRY_COUNT ; 
 unsigned long PBTN_DOWN ; 
 unsigned long PBTN_LEFT ; 
 unsigned long PBTN_PLAY ; 
 unsigned long PBTN_REW ; 
 unsigned long PBTN_RIGHT ; 
 unsigned long PBTN_STOP ; 
 unsigned long PBTN_UP ; 
 int /*<<< orphan*/  PGS_ReloadRom ; 
 int PicoAHW ; 
 int PicoOpt ; 
 int PsndRate ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ config_slot ; 
 scalar_t__ config_slot_current ; 
 TYPE_1__ currentConfig ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  engineState ; 
 unsigned long FUNC5 (unsigned long) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  menuErrorMsg ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  opt_entries ; 
 int /*<<< orphan*/  FUNC11 (unsigned long) ; 
 int rom_loaded ; 
 int FUNC12 (int,unsigned long) ; 
 int state_slot ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC14(void)
{
	static int menu_sel = 0;
	int menu_sel_max, ret;
	unsigned long inp = 0;
	menu_id selected_id;

	FUNC7(opt_entries, OPT_ENTRY_COUNT, MA_OPT_SAVECFG_GAME, rom_loaded);
	FUNC7(opt_entries, OPT_ENTRY_COUNT, MA_OPT_LOADCFG, config_slot != config_slot_current);
	menu_sel_max = FUNC6(opt_entries, OPT_ENTRY_COUNT) - 1;
	if (menu_sel > menu_sel_max) menu_sel = menu_sel_max;

	while (1)
	{
		FUNC2(menu_sel);
		inp = FUNC5(PBTN_UP|PBTN_DOWN|PBTN_LEFT|PBTN_RIGHT|PBTN_PLAY|PBTN_STOP|PBTN_REW);
		if (inp & PBTN_UP  ) { menu_sel--; if (menu_sel < 0) menu_sel = menu_sel_max; }
		if (inp & PBTN_DOWN) { menu_sel++; if (menu_sel > menu_sel_max) menu_sel = 0; }
		selected_id = FUNC8(opt_entries, OPT_ENTRY_COUNT, menu_sel);
		if (inp & (PBTN_LEFT|PBTN_RIGHT)) { // multi choise
			if (!FUNC9(opt_entries, OPT_ENTRY_COUNT, selected_id, (inp&PBTN_RIGHT) ? 1 : 0)) {
				switch (selected_id) {
					case MA_OPT_RENDERER:
						if (inp & PBTN_LEFT) {
							if ((PicoOpt&0x10) || !(currentConfig.EmuOpt &0x80)) {
								PicoOpt&= ~0x10;
								currentConfig.EmuOpt |=  0x80;
							}
						} else {
							if (!(PicoOpt&0x10) || (currentConfig.EmuOpt &0x80)) {
								PicoOpt|=  0x10;
								currentConfig.EmuOpt &= ~0x80;
							}
						}
						break;
					case MA_OPT_SOUND_QUALITY:
						if ((inp & PBTN_RIGHT) && PsndRate == 44100 &&
								!(PicoOpt&0x08))
						{
							PsndRate =  11025;
							PicoOpt |=  8;
						} else if ((inp & PBTN_LEFT) && PsndRate == 11025 &&
								(PicoOpt&0x08) && !(PicoAHW&1))
						{
							PsndRate =  44100;
							PicoOpt &= ~8;
						} else
							PsndRate = FUNC12(PsndRate, inp & PBTN_RIGHT);
						break;
					case MA_OPT_REGION:
						FUNC11(inp & PBTN_RIGHT);
						break;
					case MA_OPT_CONFIRM_STATES: {
							 int n = ((currentConfig.EmuOpt>>9)&1) | ((currentConfig.EmuOpt>>10)&2);
							 n += (inp & PBTN_LEFT) ? -1 : 1;
							 if (n < 0) n = 0; else if (n > 3) n = 3;
							 n |= n << 1; n &= ~2;
							 currentConfig.EmuOpt &= ~0xa00;
							 currentConfig.EmuOpt |= n << 9;
							 break;
						 }
					case MA_OPT_SAVE_SLOT:
						 if (inp & PBTN_RIGHT) {
							 state_slot++; if (state_slot > 9) state_slot = 0;
						 } else {state_slot--; if (state_slot < 0) state_slot = 9;
						 }
						 break;
					case MA_OPT_SAVECFG:
					case MA_OPT_SAVECFG_GAME:
					case MA_OPT_LOADCFG:
						 config_slot += (inp&PBTN_RIGHT) ? 1 : -1;
						 if (config_slot > 9) config_slot = 0;
						 if (config_slot < 0) config_slot = 9;
						 FUNC7(opt_entries, OPT_ENTRY_COUNT, MA_OPT_LOADCFG, config_slot != config_slot_current);
						 menu_sel_max = FUNC6(opt_entries, OPT_ENTRY_COUNT) - 1;
						 if (menu_sel > menu_sel_max) menu_sel = menu_sel_max;
						 break;
					default:
						//lprintf("%s: something unknown selected (%i)\n", __FUNCTION__, selected_id);
						break;
				}
			}
		}
		if (inp & PBTN_PLAY) {
			if (!FUNC9(opt_entries, OPT_ENTRY_COUNT, selected_id, 1))
			{
				switch (selected_id)
				{
					case MA_OPT_SCD_OPTS:
						FUNC1();
						if (engineState == PGS_ReloadRom)
							return 0; // test BIOS
						break;
					case MA_OPT_ADV_OPTS:
						FUNC0();
						break;
					case MA_OPT_SAVECFG: // done (update and write)
						FUNC10();
						if (FUNC4(0)) FUNC13(menuErrorMsg, "config saved");
						else FUNC13(menuErrorMsg, "failed to write config");
						return 1;
					case MA_OPT_SAVECFG_GAME: // done (update and write for current game)
						FUNC10();
						if (FUNC4(1)) FUNC13(menuErrorMsg, "config saved");
						else FUNC13(menuErrorMsg, "failed to write config");
						return 1;
					case MA_OPT_LOADCFG:
						ret = FUNC3(1, 1);
						if (!ret) ret = FUNC3(0, 1);
						if (ret)  FUNC13(menuErrorMsg, "config loaded");
						else      FUNC13(menuErrorMsg, "failed to load config");
						return 1;
					default:
						//lprintf("%s: something unknown selected (%i)\n", __FUNCTION__, selected_id);
						break;
				}
			}
		}
		if(inp & (PBTN_STOP|PBTN_REW)) {
			FUNC10();
			return 0;  // done (update, no write)
		}
	}
}