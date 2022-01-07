
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rarch_setting_t ;


 int CHEAT_SEARCH_TYPE_EQPLUS ;
 int cheat_manager_search (int ) ;

int cheat_manager_search_eqplus(rarch_setting_t *setting, bool wraparound)
{
   return cheat_manager_search(CHEAT_SEARCH_TYPE_EQPLUS);
}
