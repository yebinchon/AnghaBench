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
typedef  int /*<<< orphan*/  string ;
struct TYPE_2__ {int channels; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  Atari800_MACHINE_5200 ; 
 int /*<<< orphan*/  Atari800_MACHINE_800 ; 
 int /*<<< orphan*/  Atari800_MACHINE_XLXE ; 
 int /*<<< orphan*/  Atari800_TV_NTSC ; 
 int /*<<< orphan*/  Atari800_TV_PAL ; 
 void* Atari800_builtin_basic ; 
 void* Atari800_builtin_game ; 
 void* Atari800_disable_basic ; 
 void* Atari800_f_keys ; 
 void* Atari800_jumper ; 
 void* Atari800_keyboard_detached ; 
 void* Atari800_keyboard_leds ; 
 int /*<<< orphan*/  Atari800_machine_type ; 
 void* Atari800_refresh_rate ; 
 int /*<<< orphan*/  Atari800_tv_mode ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 void* CFG_save_on_exit ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  DEFAULT_CFG_NAME ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char** Devices_atari_h_dir ; 
 void* Devices_enable_h_patch ; 
 void* Devices_enable_p_patch ; 
 void* Devices_enable_r_patch ; 
 void* Devices_h_read_only ; 
 void* ESC_enable_sio_patch ; 
 int FALSE ; 
 int /*<<< orphan*/  FILENAME_MAX ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int MEMORY_RAM_320_COMPY_SHOP ; 
 int MEMORY_RAM_320_RAMBO ; 
 scalar_t__ FUNC8 (int) ; 
 int MEMORY_axlon_num_banks ; 
 void* MEMORY_enable_mapram ; 
 int MEMORY_mosaic_num_banks ; 
 int MEMORY_ram_size ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 void* POKEYSND_console_sound_enabled ; 
 void* POKEYSND_enable_new_pokey ; 
 void* POKEYSND_serio_sound_enabled ; 
 void* POKEYSND_stereo_enabled ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 char* SYSTEM_WIDE_CFG_FILE ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 scalar_t__ FUNC15 (char*,char*) ; 
 TYPE_1__ Sound_desired ; 
 int TRUE ; 
 scalar_t__ UI_MAX_DIRECTORIES ; 
 char** UI_atari_files_dir ; 
 scalar_t__ UI_n_atari_files_dir ; 
 scalar_t__ UI_n_saved_files_dir ; 
 char** UI_saved_files_dir ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 void* FUNC18 (char*) ; 
 void* FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 scalar_t__ FUNC22 (char*,char*) ; 
 scalar_t__ FUNC23 (char*,char*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC25 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC26 (char const*,char*) ; 
 char* FUNC27 (char*) ; 
 char* rtconfig_filename ; 
 char* FUNC28 (char*,char) ; 
 scalar_t__ FUNC29 (char*,char*) ; 
 int /*<<< orphan*/  FUNC30 (char*,int /*<<< orphan*/ ) ; 

int FUNC31(const char *alternate_config_filename)
{
	FILE *fp;
	const char *fname = rtconfig_filename;
	char string[256];
#ifndef BASIC
	int was_obsolete_dir = FALSE;
#endif

#ifdef SUPPORTS_PLATFORM_CONFIGINIT
	PLATFORM_ConfigInit();
#endif

	/* if alternate config filename is passed then use it */
	if (alternate_config_filename != NULL && *alternate_config_filename > 0) {
		FUNC20(rtconfig_filename, alternate_config_filename, FILENAME_MAX);
	}
	/* else use the default config name under the HOME folder */
	else {
		char *home = FUNC27("HOME");
		if (home != NULL)
			FUNC16(rtconfig_filename, home, DEFAULT_CFG_NAME);
		else
			FUNC30(rtconfig_filename, DEFAULT_CFG_NAME);
	}

	fp = FUNC26(fname, "r");
	if (fp == NULL) {
		FUNC7("User config file '%s' not found.", rtconfig_filename);

#ifdef SYSTEM_WIDE_CFG_FILE
		/* try system wide config file */
		fname = SYSTEM_WIDE_CFG_FILE;
		Log_print("Trying system wide config file: %s", fname);
		fp = fopen(fname, "r");
#endif
		if (fp == NULL) {
			FUNC7("No configuration file found, will create fresh one from scratch:");
			return FALSE;
		}
	}

	if (FUNC25(string, sizeof(string), fp) != NULL) {
		FUNC7("Using Atari800 config file: %s\nCreated by %s", fname, string);
	}

	while (FUNC25(string, sizeof(string), fp)) {
		char *ptr;
		FUNC17(string);
		ptr = FUNC28(string, '=');
		if (ptr != NULL) {
			*ptr++ = '\0';
			FUNC21(string);
			FUNC21(ptr);

			if (FUNC13(string, ptr)) {
			}
#ifdef BASIC
			else if (strcmp(string, "ATARI_FILES_DIR") == 0
				  || strcmp(string, "SAVED_FILES_DIR") == 0
				  || strcmp(string, "DISK_DIR") == 0 || strcmp(string, "ROM_DIR") == 0
				  || strcmp(string, "EXE_DIR") == 0 || strcmp(string, "STATE_DIR") == 0)
				/* do nothing */;
#else
			else if (FUNC29(string, "ATARI_FILES_DIR") == 0) {
				if (UI_n_atari_files_dir >= UI_MAX_DIRECTORIES)
					FUNC7("All ATARI_FILES_DIR slots used!");
				else
					FUNC20(UI_atari_files_dir[UI_n_atari_files_dir++], ptr, FILENAME_MAX);
			}
			else if (FUNC29(string, "SAVED_FILES_DIR") == 0) {
				if (UI_n_saved_files_dir >= UI_MAX_DIRECTORIES)
					FUNC7("All SAVED_FILES_DIR slots used!");
				else
					FUNC20(UI_saved_files_dir[UI_n_saved_files_dir++], ptr, FILENAME_MAX);
			}
			else if (FUNC29(string, "DISK_DIR") == 0 || FUNC29(string, "ROM_DIR") == 0
				  || FUNC29(string, "EXE_DIR") == 0 || FUNC29(string, "STATE_DIR") == 0) {
				/* ignore blank and "." values */
				if (ptr[0] != '\0' && (ptr[0] != '.' || ptr[1] != '\0'))
					was_obsolete_dir = TRUE;
			}
#endif
			else if (FUNC29(string, "H1_DIR") == 0)
				FUNC20(Devices_atari_h_dir[0], ptr, FILENAME_MAX);
			else if (FUNC29(string, "H2_DIR") == 0)
				FUNC20(Devices_atari_h_dir[1], ptr, FILENAME_MAX);
			else if (FUNC29(string, "H3_DIR") == 0)
				FUNC20(Devices_atari_h_dir[2], ptr, FILENAME_MAX);
			else if (FUNC29(string, "H4_DIR") == 0)
				FUNC20(Devices_atari_h_dir[3], ptr, FILENAME_MAX);
			else if (FUNC29(string, "HD_READ_ONLY") == 0)
				Devices_h_read_only = FUNC19(ptr);

			else if (FUNC29(string, "PRINT_COMMAND") == 0) {
				if (!FUNC5(ptr))
					FUNC7("Unsafe PRINT_COMMAND ignored");
			}

			else if (FUNC29(string, "SCREEN_REFRESH_RATIO") == 0)
				Atari800_refresh_rate = FUNC19(ptr);
			else if (FUNC29(string, "DISABLE_BASIC") == 0)
				Atari800_disable_basic = FUNC18(ptr);

			else if (FUNC29(string, "ENABLE_SIO_PATCH") == 0) {
				ESC_enable_sio_patch = FUNC18(ptr);
			}
			else if (FUNC29(string, "ENABLE_H_PATCH") == 0) {
				Devices_enable_h_patch = FUNC18(ptr);
			}
			else if (FUNC29(string, "ENABLE_P_PATCH") == 0) {
				Devices_enable_p_patch = FUNC18(ptr);
			}
			else if (FUNC29(string, "ENABLE_R_PATCH") == 0) {
				Devices_enable_r_patch = FUNC18(ptr);
			}

			else if (FUNC29(string, "ENABLE_NEW_POKEY") == 0) {
#ifdef SOUND
				POKEYSND_enable_new_pokey = Util_sscanbool(ptr);
#endif /* SOUND */
			}
			else if (FUNC29(string, "STEREO_POKEY") == 0) {
#ifdef STEREO_SOUND
				POKEYSND_stereo_enabled = Util_sscanbool(ptr);
#ifdef SOUND_THIN_API
				Sound_desired.channels = POKEYSND_stereo_enabled ? 2 : 1;
#endif /* SOUND_THIN_API */
#endif /* STEREO_SOUND */
			}
			else if (FUNC29(string, "SPEAKER_SOUND") == 0) {
#ifdef CONSOLE_SOUND
				POKEYSND_console_sound_enabled = Util_sscanbool(ptr);
#endif
			}
			else if (FUNC29(string, "SERIO_SOUND") == 0) {
#ifdef SERIO_SOUND
				POKEYSND_serio_sound_enabled = Util_sscanbool(ptr);
#endif
			}
			else if (FUNC29(string, "MACHINE_TYPE") == 0) {
				if (FUNC29(ptr, "Atari 400/800") == 0 ||
				    /* Also recognise legacy values of this parameter */
				    FUNC29(ptr, "Atari OS/A") == 0 ||
				    FUNC29(ptr, "Atari OS/B") == 0)
					Atari800_machine_type = Atari800_MACHINE_800;
				else if (FUNC29(ptr, "Atari XL/XE") == 0)
					Atari800_machine_type = Atari800_MACHINE_XLXE;
				else if (FUNC29(ptr, "Atari 5200") == 0)
					Atari800_machine_type = Atari800_MACHINE_5200;
				else
					FUNC7("Invalid machine type: %s", ptr);
			}
			else if (FUNC29(string, "RAM_SIZE") == 0) {
				if (FUNC29(ptr, "320 (RAMBO)") == 0)
					MEMORY_ram_size = MEMORY_RAM_320_RAMBO;
				else if (FUNC29(ptr, "320 (COMPY SHOP)") == 0)
					MEMORY_ram_size = MEMORY_RAM_320_COMPY_SHOP;
				else {
					int size = FUNC19(ptr);
					if (FUNC8(size))
						MEMORY_ram_size = size;
					else
						FUNC7("Invalid RAM size: %s", ptr);
				}
			}
			else if (FUNC29(string, "DEFAULT_TV_MODE") == 0) {
				if (FUNC29(ptr, "PAL") == 0)
					Atari800_tv_mode = Atari800_TV_PAL;
				else if (FUNC29(ptr, "NTSC") == 0)
					Atari800_tv_mode = Atari800_TV_NTSC;
				else
					FUNC7("Invalid TV Mode: %s", ptr);
			}
			else if (FUNC29(string, "MOSAIC_RAM_NUM_BANKS") == 0) {
				int num = FUNC19(ptr);
				if (num >= 0 && num <= 64)
					MEMORY_mosaic_num_banks = num;
				else
					FUNC7("Invalid Mosaic RAM number of banks: %s", ptr);
			}
			else if (FUNC29(string, "AXLON_RAM_NUM_BANKS") == 0) {
				int num = FUNC19(ptr);
				if (num == 0 || num == 8 || num == 16 || num == 32 || num == 64 || num == 128 || num == 256)
					MEMORY_axlon_num_banks = num;
				else
					FUNC7("Invalid Mosaic RAM number of banks: %s", ptr);
			}
			else if (FUNC29(string, "ENABLE_MAPRAM") == 0)
				MEMORY_enable_mapram = FUNC18(ptr);
			else if (FUNC29(string, "BUILTIN_BASIC") == 0)
				Atari800_builtin_basic = FUNC18(ptr);
			else if (FUNC29(string, "KEYBOARD_LEDS") == 0)
				Atari800_keyboard_leds = FUNC18(ptr);
			else if (FUNC29(string, "F_KEYS") == 0)
				Atari800_f_keys = FUNC18(ptr);
			else if (FUNC29(string, "BUILTIN_GAME") == 0)
				Atari800_builtin_game = FUNC18(ptr);
			else if (FUNC29(string, "KEYBOARD_DETACHED") == 0)
				Atari800_keyboard_detached = FUNC18(ptr);
			else if (FUNC29(string, "1200XL_JUMPER") == 0)
				Atari800_jumper = FUNC18(ptr);
			else if (FUNC29(string, "CFG_SAVE_ON_EXIT") == 0) {
				CFG_save_on_exit = FUNC18(ptr);
			}
			/* Add module-specific configurations here */
			else if (FUNC9(string,ptr)) {
			}
			else if (FUNC2(string, ptr)) {
			}
			else if (FUNC3(string, ptr)) {
			}
			else if (FUNC12(string, ptr)) {
			}
#ifdef XEP80_EMULATION
			else if (XEP80_ReadConfig(string, ptr)) {
			}
#endif
#ifdef AF80
			else if (AF80_ReadConfig(string,ptr)) {
			}
#endif
#if !defined(BASIC) && !defined(CURSES_BASIC)
			else if (FUNC4(string, ptr)) {
			}
			else if (FUNC1(string, ptr)) {
			}
			else if (FUNC14(string, ptr)) {
			}
#endif
#ifdef NTSC_FILTER
			else if (FILTER_NTSC_ReadConfig(string, ptr)) {
			}
#endif
#if SUPPORTS_CHANGE_VIDEOMODE
			else if (VIDEOMODE_ReadConfig(string, ptr)) {
			}
#endif
#if defined(SOUND) && defined(SOUND_THIN_API)
			else if (Sound_ReadConfig(string, ptr)) {
			}
#endif /* defined(SOUND) && defined(SOUND_THIN_API) */
			else {
#ifdef SUPPORTS_PLATFORM_CONFIGURE
				if (!PLATFORM_Configure(string, ptr)) {
					Log_print("Unrecognized variable or bad parameters: '%s=%s'", string, ptr);
				}
#else
				FUNC7("Unrecognized variable: %s", string);
#endif
			}
		}
		else {
			FUNC7("Ignored config line: %s", string);
		}
	}

	FUNC24(fp);
#ifndef BASIC
	if (was_obsolete_dir) {
		FUNC7(
			"DISK_DIR, ROM_DIR, EXE_DIR and STATE_DIR configuration options\n"
			"are no longer supported. Please use ATARI_FILES_DIR\n"
			"and SAVED_FILES_DIR in your Atari800 configuration file.");
	}
#endif
	return TRUE;
}