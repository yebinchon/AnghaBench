
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_2__ {int confirm_save; } ;


 int EOPT_CONFIRM_LOAD ;
 int EOPT_CONFIRM_SAVE ;
 int IN_CFG_BLOCKING ;
 int PBTN_MBACK ;
 int PBTN_MOK ;
 unsigned int PEV_MENU ;
 unsigned int PEV_SSLOT_NEXT ;
 unsigned int PEV_SSLOT_PREV ;
 unsigned int PEV_STATE_LOAD ;
 unsigned int PEV_STATE_SAVE ;
 unsigned int PEV_SWITCH_RND ;
 int PGS_Menu ;
 int * PicoStateProgressCB ;
 TYPE_1__ currentConfig ;
 scalar_t__ emu_check_save_file (int,int *) ;
 int emu_save_load_game (int,int ) ;
 int emu_status_msg (char*,int,char*) ;
 int engineState ;
 char* in_get_key_name (int,int) ;
 int in_menu_wait_any (int *,int) ;
 int in_set_config_int (int ,int ,int) ;
 int plat_status_msg_busy_first (char*) ;
 int * plat_status_msg_busy_next ;
 int plat_video_toggle_renderer (int,int ) ;
 int snprintf (char*,int,char*,char const*) ;
 int state_slot ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void run_events_ui(unsigned int which)
{
 if (which & (PEV_STATE_LOAD|PEV_STATE_SAVE))
 {
  int do_it = 1;
  if ( emu_check_save_file(state_slot, ((void*)0)) &&
   (((which & PEV_STATE_LOAD) && (currentConfig.confirm_save & EOPT_CONFIRM_LOAD)) ||
    ((which & PEV_STATE_SAVE) && (currentConfig.confirm_save & EOPT_CONFIRM_SAVE))) )
  {
   const char *nm;
   char tmp[64];
   int keys, len;

   strcpy(tmp, (which & PEV_STATE_LOAD) ? "LOAD STATE? " : "OVERWRITE SAVE? ");
   len = strlen(tmp);
   nm = in_get_key_name(-1, -PBTN_MOK);
   snprintf(tmp + len, sizeof(tmp) - len, "(%s=yes, ", nm);
   len = strlen(tmp);
   nm = in_get_key_name(-1, -PBTN_MBACK);
   snprintf(tmp + len, sizeof(tmp) - len, "%s=no)", nm);

   plat_status_msg_busy_first(tmp);

   in_set_config_int(0, IN_CFG_BLOCKING, 1);
   while (in_menu_wait_any(((void*)0), 50) & (PBTN_MOK | PBTN_MBACK))
    ;
   while ( !((keys = in_menu_wait_any(((void*)0), 50)) & (PBTN_MOK | PBTN_MBACK)))
    ;
   if (keys & PBTN_MBACK)
    do_it = 0;
   while (in_menu_wait_any(((void*)0), 50) & (PBTN_MOK | PBTN_MBACK))
    ;
   in_set_config_int(0, IN_CFG_BLOCKING, 0);
  }
  if (do_it) {
   plat_status_msg_busy_first((which & PEV_STATE_LOAD) ? "LOADING STATE" : "SAVING STATE");
   PicoStateProgressCB = plat_status_msg_busy_next;
   emu_save_load_game((which & PEV_STATE_LOAD) ? 1 : 0, 0);
   PicoStateProgressCB = ((void*)0);
  }
 }
 if (which & PEV_SWITCH_RND)
 {
  plat_video_toggle_renderer(1, 0);
 }
 if (which & (PEV_SSLOT_PREV|PEV_SSLOT_NEXT))
 {
  if (which & PEV_SSLOT_PREV) {
   state_slot -= 1;
   if (state_slot < 0)
    state_slot = 9;
  } else {
   state_slot += 1;
   if (state_slot > 9)
    state_slot = 0;
  }

  emu_status_msg("SAVE SLOT %i [%s]", state_slot,
   emu_check_save_file(state_slot, ((void*)0)) ? "USED" : "FREE");
 }
 if (which & PEV_MENU)
  engineState = PGS_Menu;
}
