
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int idx; } ;
struct TYPE_4__ {TYPE_1__ working_cheat; } ;


 int action_cancel_pop_default (char const*,char const*,unsigned int,size_t) ;
 int cheat_manager_copy_working_to_idx (int ) ;
 TYPE_2__ cheat_manager_state ;

__attribute__((used)) static int action_cancel_cheat_details(const char *path,
      const char *label, unsigned type, size_t idx)
{
   cheat_manager_copy_working_to_idx(cheat_manager_state.working_cheat.idx) ;
   return action_cancel_pop_default(path, label, type, idx) ;
}
