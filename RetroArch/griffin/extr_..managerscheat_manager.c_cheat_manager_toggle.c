
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ size; size_t ptr; TYPE_1__* cheats; } ;
struct TYPE_4__ {int state; } ;


 int cheat_manager_apply_cheats () ;
 TYPE_2__ cheat_manager_state ;
 int cheat_manager_update (TYPE_2__*,size_t) ;

void cheat_manager_toggle(void)
{
   if (!cheat_manager_state.cheats || cheat_manager_state.size == 0)
      return;

   cheat_manager_state.cheats[cheat_manager_state.ptr].state ^= 1;
   cheat_manager_apply_cheats();
   cheat_manager_update(&cheat_manager_state, cheat_manager_state.ptr);
}
