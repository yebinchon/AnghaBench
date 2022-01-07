
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rarch_setting_t ;
struct TYPE_2__ {int match_idx; } ;


 int CHEAT_MATCH_ACTION_TYPE_DELETE ;
 int MENU_ENTRIES_CTL_SET_REFRESH ;
 int RARCH_MENU_CTL_SET_PREVENT_POPULATE ;
 int cheat_manager_match_action (int ,int ,int *,int *,int *,int *) ;
 TYPE_1__ cheat_manager_state ;
 int menu_driver_ctl (int ,int *) ;
 int menu_entries_ctl (int ,int*) ;

int cheat_manager_delete_match(rarch_setting_t *setting, bool wraparound)
{
   bool refresh = 0;
   cheat_manager_match_action(CHEAT_MATCH_ACTION_TYPE_DELETE,
         cheat_manager_state.match_idx, ((void*)0), ((void*)0), ((void*)0), ((void*)0));




   return 0;
}
