
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cheats; } ;


 int cheat_manager_new (int ) ;
 TYPE_1__ cheat_manager_state ;

bool cheat_manager_alloc_if_empty(void)
{
   if (!cheat_manager_state.cheats)
      cheat_manager_new(0);

   return 1;
}
