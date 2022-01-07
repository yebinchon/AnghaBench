
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cheat_manager_toggle_index (unsigned int) ;

int generic_action_cheat_toggle(size_t idx, unsigned type, const char *label,
      bool wraparound)
{
   cheat_manager_toggle_index((unsigned)idx);

   return 0;
}
