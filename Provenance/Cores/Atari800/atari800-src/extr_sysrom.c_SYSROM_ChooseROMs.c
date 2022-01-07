
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* filename; } ;


 int Atari800_MACHINE_5200 ;
 int SYSROM_AUTO ;
 int SYSROM_AutoChooseBASIC () ;
 int SYSROM_AutoChooseOS (int,int,int) ;
 int SYSROM_AutoChooseXEGame () ;
 int SYSROM_basic_version ;
 int* SYSROM_os_versions ;
 TYPE_1__* SYSROM_roms ;
 int SYSROM_xegame_version ;

void SYSROM_ChooseROMs(int machine_type, int ram_size, int tv_system, int *os_version, int *basic_version, int *xegame_version)
{
 int os_ver;
 if (SYSROM_os_versions[machine_type] == SYSROM_AUTO)
  os_ver = SYSROM_AutoChooseOS(machine_type, ram_size, tv_system);
 else
  os_ver = SYSROM_os_versions[machine_type];

 if (os_ver != -1 && SYSROM_roms[os_ver].filename[0] == '\0')
  os_ver = -1;
 *os_version = os_ver;

 if (machine_type == Atari800_MACHINE_5200)
  *basic_version = -1;
 else {
  int basic_ver;
  int xegame_ver;


  if (SYSROM_basic_version == SYSROM_AUTO)
   basic_ver = SYSROM_AutoChooseBASIC();
  else
   basic_ver = SYSROM_basic_version;
  if (basic_ver != -1 && SYSROM_roms[basic_ver].filename[0] == '\0')
   basic_ver = -1;
  *basic_version = basic_ver;


  if (SYSROM_xegame_version == SYSROM_AUTO)
   xegame_ver = SYSROM_AutoChooseXEGame();
  else
   xegame_ver = SYSROM_xegame_version;
  if (xegame_ver != -1 && SYSROM_roms[xegame_ver].filename[0] == '\0')
   xegame_ver = -1;
  *xegame_version = xegame_ver;
 }
}
