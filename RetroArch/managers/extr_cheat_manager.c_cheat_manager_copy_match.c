
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rarch_setting_t ;
struct TYPE_2__ {int match_idx; } ;


 int CHEAT_MATCH_ACTION_TYPE_COPY ;
 int cheat_manager_match_action (int ,int ,int *,int *,int *,int *) ;
 TYPE_1__ cheat_manager_state ;

int cheat_manager_copy_match(rarch_setting_t *setting, bool wraparound)
{
   cheat_manager_match_action(CHEAT_MATCH_ACTION_TYPE_COPY,
         cheat_manager_state.match_idx, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
   return 0;
}
