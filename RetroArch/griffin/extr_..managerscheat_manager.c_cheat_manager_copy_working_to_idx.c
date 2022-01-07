
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct item_cheat {int dummy; } ;
struct TYPE_4__ {unsigned int size; int working_code; TYPE_1__* cheats; int working_desc; int working_cheat; } ;
struct TYPE_3__ {void* code; void* desc; } ;


 TYPE_2__ cheat_manager_state ;
 int free (void*) ;
 int memcpy (TYPE_1__*,int *,int) ;
 void* strdup (int ) ;

bool cheat_manager_copy_working_to_idx(unsigned idx)
{
   if ((!cheat_manager_state.cheats) || (cheat_manager_state.size < idx + 1))
      return 0;

   memcpy(&(cheat_manager_state.cheats[idx]), &(cheat_manager_state.working_cheat), sizeof(struct item_cheat));

   if (cheat_manager_state.cheats[idx].desc)
      free(cheat_manager_state.cheats[idx].desc);

   cheat_manager_state.cheats[idx].desc = strdup(cheat_manager_state.working_desc);

   if (cheat_manager_state.cheats[idx].code)
      free(cheat_manager_state.cheats[idx].code);

   cheat_manager_state.cheats[idx].code = strdup(cheat_manager_state.working_code);

   return 1;
}
