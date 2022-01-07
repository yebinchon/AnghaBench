
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ sample; } ;


 int EINVAL ;
 unsigned int actionc ;
 TYPE_1__* actionv ;

int
kperf_action_get_samplers(unsigned actionid, uint32_t *samplers_out)
{
 if ((actionid > actionc)) {
  return EINVAL;
 }

 if (actionid == 0) {
  *samplers_out = 0;
 } else {
  *samplers_out = actionv[actionid - 1].sample;
 }

 return 0;
}
