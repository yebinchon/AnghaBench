
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* cheats; } ;
struct TYPE_3__ {int state; int code; } ;


 TYPE_2__ cheat_manager_state ;
 int strcpy (int ,char const*) ;
 int string_is_empty (char const*) ;

void cheat_manager_set_code(unsigned i, const char *str)
{
   if (!cheat_manager_state.cheats)
      return;

   if (!string_is_empty(str))
      strcpy(cheat_manager_state.cheats[i].code, str);

   cheat_manager_state.cheats[i].state = 1;
}
