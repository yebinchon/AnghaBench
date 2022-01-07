
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PBTN_DOWN ;
 unsigned long PBTN_PLAY ;
 unsigned long PBTN_STOP ;
 unsigned long PBTN_UP ;
 int PicoStateProgressCB ;
 int draw_savestate_menu (int,int) ;
 scalar_t__ emu_SaveLoadGame (int,int ) ;
 int emu_stateCb ;
 unsigned long in_menu_wait (unsigned long) ;
 int menuErrorMsg ;
 int state_check_slots () ;
 int state_slot ;
 int state_slot_flags ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int savestate_menu_loop(int is_loading)
{
 static int menu_sel = 10;
 int menu_sel_max = 10;
 unsigned long inp = 0;

 state_check_slots();

 for(;;)
 {
  draw_savestate_menu(menu_sel, is_loading);
  inp = in_menu_wait(PBTN_UP|PBTN_DOWN|PBTN_PLAY|PBTN_STOP);
  if(inp & PBTN_UP ) {
   do {
    menu_sel--; if (menu_sel < 0) menu_sel = menu_sel_max;
   } while (!(state_slot_flags & (1 << menu_sel)) && menu_sel != menu_sel_max && is_loading);
  }
  if(inp & PBTN_DOWN) {
   do {
    menu_sel++; if (menu_sel > menu_sel_max) menu_sel = 0;
   } while (!(state_slot_flags & (1 << menu_sel)) && menu_sel != menu_sel_max && is_loading);
  }
  if(inp & PBTN_PLAY) {
   if (menu_sel < 10) {
    state_slot = menu_sel;
    PicoStateProgressCB = emu_stateCb;
    if (emu_SaveLoadGame(is_loading, 0)) {
     strcpy(menuErrorMsg, is_loading ? "Load failed" : "Save failed");
     return 1;
    }
    return 0;
   } else return 1;
  }
  if(inp & PBTN_STOP) return 1;
 }
}
