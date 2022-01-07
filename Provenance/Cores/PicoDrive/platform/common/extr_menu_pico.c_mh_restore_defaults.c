
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emu_set_defconfig () ;
 int menu_update_msg (char*) ;

__attribute__((used)) static int mh_restore_defaults(int id, int keys)
{
 emu_set_defconfig();
 menu_update_msg("defaults restored");
 return 1;
}
