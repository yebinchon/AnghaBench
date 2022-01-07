
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RARCH_PATH_SUBSYSTEM ;
 int path_set (int ,int ) ;
 int path_set_special (int ,int ) ;
 int pending_subsystem_ident ;
 int pending_subsystem_init ;
 int pending_subsystem_rom_num ;
 int pending_subsystem_roms ;

void content_set_subsystem_info(void)
{
   if (!pending_subsystem_init)
      return;

   path_set(RARCH_PATH_SUBSYSTEM, pending_subsystem_ident);
   path_set_special(pending_subsystem_roms, pending_subsystem_rom_num);
}
