
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int menu_id ;
struct TYPE_2__ {int EmuOpt; int CPUclock; } ;
 int OPT_ENTRY_COUNT ;
 unsigned long PBTN_CIRCLE ;
 unsigned long PBTN_DOWN ;
 unsigned long PBTN_LEFT ;
 unsigned long PBTN_RIGHT ;
 unsigned long PBTN_UP ;
 unsigned long PBTN_X ;
 int PGS_ReloadRom ;
 int PicoOpt ;
 int PsndRate ;
 int amenu_loop_options () ;
 int cd_menu_loop_options () ;
 scalar_t__ config_slot ;
 scalar_t__ config_slot_current ;
 TYPE_1__ currentConfig ;
 int dispmenu_loop_options () ;
 int draw_menu_options (int) ;
 int emu_ReadConfig (int,int) ;
 int emu_WriteConfig (int) ;
 int engineState ;
 unsigned long in_menu_wait (unsigned long,int ) ;
 int me_count_enabled (int ,int ) ;
 int me_enable (int ,int ,int const,int) ;
 int me_index2id (int ,int ,int) ;
 int me_process (int ,int ,int ,int) ;
 int menuErrorMsg ;
 int menu_options_save () ;
 int opt_entries ;
 unsigned long psp_pad_read (int ) ;
 int region_prevnext (unsigned long) ;
 int rom_loaded ;
 int sndrate_prevnext (int ,unsigned long) ;
 int state_slot ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int menu_loop_options(void)
{
 static int menu_sel = 0;
 int menu_sel_max, ret;
 unsigned long inp = 0;
 menu_id selected_id;

 me_enable(opt_entries, OPT_ENTRY_COUNT, 131, rom_loaded);
 me_enable(opt_entries, OPT_ENTRY_COUNT, 135, config_slot != config_slot_current);
 menu_sel_max = me_count_enabled(opt_entries, OPT_ENTRY_COUNT) - 1;
 if (menu_sel > menu_sel_max) menu_sel = menu_sel_max;

 while (1)
 {
  draw_menu_options(menu_sel);
  inp = in_menu_wait(PBTN_UP|PBTN_DOWN|PBTN_LEFT|PBTN_RIGHT|PBTN_X|PBTN_CIRCLE, 0);
  if (inp & PBTN_UP ) { menu_sel--; if (menu_sel < 0) menu_sel = menu_sel_max; }
  if (inp & PBTN_DOWN) { menu_sel++; if (menu_sel > menu_sel_max) menu_sel = 0; }
  selected_id = me_index2id(opt_entries, OPT_ENTRY_COUNT, menu_sel);
  if (inp & (PBTN_LEFT|PBTN_RIGHT)) {
   if (!me_process(opt_entries, OPT_ENTRY_COUNT, selected_id, (inp&PBTN_RIGHT) ? 1 : 0)) {
    switch (selected_id) {
     case 133:
      if ((PicoOpt & 0x10) || !(currentConfig.EmuOpt & 0x80)) {
       PicoOpt &= ~0x10;
       currentConfig.EmuOpt |= 0x80;
      } else {
       PicoOpt |= 0x10;
       currentConfig.EmuOpt &= ~0x80;
      }
      break;
     case 128:
      PsndRate = sndrate_prevnext(PsndRate, inp & PBTN_RIGHT);
      break;
     case 134:
      region_prevnext(inp & PBTN_RIGHT);
      break;
     case 138: {
        int n = ((currentConfig.EmuOpt>>9)&1) | ((currentConfig.EmuOpt>>10)&2);
        n += (inp & PBTN_LEFT) ? -1 : 1;
        if (n < 0) n = 0; else if (n > 3) n = 3;
        n |= n << 1; n &= ~2;
        currentConfig.EmuOpt &= ~0xa00;
        currentConfig.EmuOpt |= n << 9;
        break;
       }
     case 130:
       if (inp & PBTN_RIGHT) {
        state_slot++; if (state_slot > 9) state_slot = 0;
       } else {state_slot--; if (state_slot < 0) state_slot = 9;
       }
       break;
     case 137:
       while ((inp = psp_pad_read(0)) & (PBTN_LEFT|PBTN_RIGHT)) {
        currentConfig.CPUclock += (inp & PBTN_LEFT) ? -1 : 1;
        if (currentConfig.CPUclock < 19) currentConfig.CPUclock = 19;
        if (currentConfig.CPUclock > 333) currentConfig.CPUclock = 333;
        draw_menu_options(menu_sel);
       }
       break;
     case 132:
     case 131:
     case 135:
       config_slot += (inp&PBTN_RIGHT) ? 1 : -1;
       if (config_slot > 9) config_slot = 0;
       if (config_slot < 0) config_slot = 9;
       me_enable(opt_entries, OPT_ENTRY_COUNT, 135, config_slot != config_slot_current);
       menu_sel_max = me_count_enabled(opt_entries, OPT_ENTRY_COUNT) - 1;
       if (menu_sel > menu_sel_max) menu_sel = menu_sel_max;
       break;
     default:

      break;
    }
   }
  }
  if (inp & PBTN_CIRCLE) {
   if (!me_process(opt_entries, OPT_ENTRY_COUNT, selected_id, 1))
   {
    switch (selected_id)
    {
     case 136:
      dispmenu_loop_options();
      break;
     case 129:
      cd_menu_loop_options();
      if (engineState == PGS_ReloadRom)
       return 0;
      break;
     case 139:
      amenu_loop_options();
      break;
     case 132:
      menu_options_save();
      if (emu_WriteConfig(0)) strcpy(menuErrorMsg, "config saved");
      else strcpy(menuErrorMsg, "failed to write config");
      return 1;
     case 131:
      menu_options_save();
      if (emu_WriteConfig(1)) strcpy(menuErrorMsg, "config saved");
      else strcpy(menuErrorMsg, "failed to write config");
      return 1;
     case 135:
      ret = emu_ReadConfig(1, 1);
      if (!ret) ret = emu_ReadConfig(0, 1);
      if (ret) strcpy(menuErrorMsg, "config loaded");
      else strcpy(menuErrorMsg, "failed to load config");
      return 1;
     default:

      break;
    }
   }
  }
  if(inp & PBTN_X) {
   menu_options_save();
   return 0;
  }
 }
}
