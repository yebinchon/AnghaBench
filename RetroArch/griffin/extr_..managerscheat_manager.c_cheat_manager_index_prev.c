
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ size; scalar_t__ ptr; int cheats; } ;


 TYPE_1__ cheat_manager_state ;
 int cheat_manager_update (TYPE_1__*,scalar_t__) ;

void cheat_manager_index_prev(void)
{
   if (!cheat_manager_state.cheats || cheat_manager_state.size == 0)
      return;

   if (cheat_manager_state.ptr == 0)
      cheat_manager_state.ptr = cheat_manager_state.size - 1;
   else
      cheat_manager_state.ptr--;

   cheat_manager_update(&cheat_manager_state, cheat_manager_state.ptr);
}
