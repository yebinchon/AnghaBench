
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ kcallstack_depth; } ;


 int EINVAL ;
 scalar_t__ MAX_CALLSTACK_FRAMES ;
 unsigned int actionc ;
 TYPE_1__* actionv ;

int
kperf_action_set_kcallstack_depth(unsigned action_id, uint32_t depth)
{
 if ((action_id > actionc) || (action_id == 0)) {
  return EINVAL;
 }

 if (depth > MAX_CALLSTACK_FRAMES) {
  return EINVAL;
 }

 actionv[action_id - 1].kcallstack_depth = depth;

 return 0;
}
