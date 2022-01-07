
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PBTN_LEFT ;
 int PBTN_RIGHT ;
 int config_slot ;
 int config_slot_current ;
 int e_menu_options ;
 int emu_read_config (int *,int) ;
 int emu_write_config (int) ;
 int me_enable (int ,int,int) ;
 int menu_update_msg (char*) ;
 int * rom_fname_loaded ;

__attribute__((used)) static int mh_saveloadcfg(int id, int keys)
{
 int ret;

 if (keys & (PBTN_LEFT|PBTN_RIGHT)) {
  config_slot += (keys & PBTN_LEFT) ? -1 : 1;
  if (config_slot < 0) config_slot = 9;
  else if (config_slot > 9) config_slot = 0;
  me_enable(e_menu_options, 130, config_slot != config_slot_current);
  return 0;
 }

 switch (id) {
 case 129:
 case 128:
  if (emu_write_config(id == 128 ? 1 : 0))
   menu_update_msg("config saved");
  else
   menu_update_msg("failed to write config");
  break;
 case 130:
  ret = emu_read_config(rom_fname_loaded, 1);
  if (!ret) ret = emu_read_config(((void*)0), 1);
  if (ret) menu_update_msg("config loaded");
  else menu_update_msg("failed to load config");
  break;
 default:
  return 0;
 }

 return 1;
}
