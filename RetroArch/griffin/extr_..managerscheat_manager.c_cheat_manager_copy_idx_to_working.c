
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct item_cheat {int dummy; } ;
struct TYPE_4__ {unsigned int size; char* working_desc; char* working_code; TYPE_1__* cheats; int working_cheat; } ;
struct TYPE_3__ {scalar_t__ code; scalar_t__ desc; } ;


 int CHEAT_CODE_SCRATCH_SIZE ;
 int CHEAT_DESC_SCRATCH_SIZE ;
 TYPE_2__ cheat_manager_state ;
 int memcpy (int *,TYPE_1__*,int) ;
 int strlcpy (char*,scalar_t__,int ) ;

bool cheat_manager_copy_idx_to_working(unsigned idx)
{
   if ((!cheat_manager_state.cheats) || (cheat_manager_state.size < idx + 1))
      return 0;

   memcpy(&(cheat_manager_state.working_cheat), &(cheat_manager_state.cheats[idx]), sizeof(struct item_cheat));

   if (cheat_manager_state.cheats[idx].desc)
      strlcpy(cheat_manager_state.working_desc, cheat_manager_state.cheats[idx].desc, CHEAT_DESC_SCRATCH_SIZE);
   else
      cheat_manager_state.working_desc[0] = '\0';

   if (cheat_manager_state.cheats[idx].code)
      strlcpy(cheat_manager_state.working_code, cheat_manager_state.cheats[idx].code, CHEAT_CODE_SCRATCH_SIZE);
   else
      cheat_manager_state.working_code[0] = '\0';

   return 1;
}
