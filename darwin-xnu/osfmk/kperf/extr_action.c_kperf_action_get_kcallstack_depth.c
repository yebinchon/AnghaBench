
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int kcallstack_depth; } ;


 int EINVAL ;
 int MAX_CALLSTACK_FRAMES ;
 unsigned int actionc ;
 TYPE_1__* actionv ;
 int assert (int *) ;

int
kperf_action_get_kcallstack_depth(unsigned action_id, uint32_t * depth_out)
{
 if ((action_id > actionc)) {
  return EINVAL;
 }

 assert(depth_out);

 if (action_id == 0) {
  *depth_out = MAX_CALLSTACK_FRAMES;
 } else {
  *depth_out = actionv[action_id - 1].kcallstack_depth;
 }

 return 0;
}
