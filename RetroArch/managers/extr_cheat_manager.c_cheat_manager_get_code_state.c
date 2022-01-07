
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* cheats; } ;
struct TYPE_3__ {int state; } ;


 TYPE_2__ cheat_manager_state ;

bool cheat_manager_get_code_state(unsigned i)
{
   if (!cheat_manager_state.cheats)
      return 0;
   return cheat_manager_state.cheats[i].state;
}
