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
struct TYPE_2__ {char* filename; int /*<<< orphan*/  unset; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t Atari800_MACHINE_5200 ; 
 size_t Atari800_MACHINE_800 ; 
 size_t Atari800_MACHINE_XLXE ; 
 int SYSROM_SIZE ; 
 size_t SYSROM_basic_version ; 
 size_t* SYSROM_os_versions ; 
 TYPE_1__* SYSROM_roms ; 
 size_t SYSROM_xegame_version ; 
 char** cfg_strings ; 
 char** cfg_strings_rev ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,...) ; 

void FUNC1(FILE *fp)
{
	int id;
	for (id = 0; id < SYSROM_SIZE; ++id) {
		if (!SYSROM_roms[id].unset)
			FUNC0(fp, "%s=%s\n", cfg_strings[id], SYSROM_roms[id].filename);
	}
	FUNC0(fp, "OS_400/800_VERSION=%s\n", cfg_strings_rev[SYSROM_os_versions[Atari800_MACHINE_800]]);
	FUNC0(fp, "OS_XL/XE_VERSION=%s\n", cfg_strings_rev[SYSROM_os_versions[Atari800_MACHINE_XLXE]]);
	FUNC0(fp, "OS_5200_VERSION=%s\n", cfg_strings_rev[SYSROM_os_versions[Atari800_MACHINE_5200]]);
	FUNC0(fp, "BASIC_VERSION=%s\n", cfg_strings_rev[SYSROM_basic_version]);
	FUNC0(fp, "XEGS_GAME_VERSION=%s\n", cfg_strings_rev[SYSROM_xegame_version]);
}