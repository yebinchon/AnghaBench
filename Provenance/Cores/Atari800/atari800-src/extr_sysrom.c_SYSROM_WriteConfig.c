
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* filename; int unset; } ;
typedef int FILE ;


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
 int fprintf (int *,char*,char*,...) ;

void SYSROM_WriteConfig(FILE *fp)
{
 int id;
 for (id = 0; id < SYSROM_SIZE; ++id) {
  if (!SYSROM_roms[id].unset)
   fprintf(fp, "%s=%s\n", cfg_strings[id], SYSROM_roms[id].filename);
 }
 fprintf(fp, "OS_400/800_VERSION=%s\n", cfg_strings_rev[SYSROM_os_versions[Atari800_MACHINE_800]]);
 fprintf(fp, "OS_XL/XE_VERSION=%s\n", cfg_strings_rev[SYSROM_os_versions[Atari800_MACHINE_XLXE]]);
 fprintf(fp, "OS_5200_VERSION=%s\n", cfg_strings_rev[SYSROM_os_versions[Atari800_MACHINE_5200]]);
 fprintf(fp, "BASIC_VERSION=%s\n", cfg_strings_rev[SYSROM_basic_version]);
 fprintf(fp, "XEGS_GAME_VERSION=%s\n", cfg_strings_rev[SYSROM_xegame_version]);
}
