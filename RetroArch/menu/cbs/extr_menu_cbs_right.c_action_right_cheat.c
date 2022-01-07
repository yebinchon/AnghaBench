
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MENU_SETTINGS_CHEAT_BEGIN ;
 int generic_action_cheat_toggle (size_t,unsigned int,char const*,int) ;

int action_right_cheat(unsigned type, const char *label,
      bool wraparound)
{
   size_t idx = type - MENU_SETTINGS_CHEAT_BEGIN;
   return generic_action_cheat_toggle(idx, type, label,
         wraparound);
}
