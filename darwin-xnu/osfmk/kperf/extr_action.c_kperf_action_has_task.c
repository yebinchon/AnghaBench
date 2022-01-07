
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sample; } ;


 int SAMPLER_TASK_MASK ;
 unsigned int actionc ;
 TYPE_1__* actionv ;

bool
kperf_action_has_task(unsigned int actionid)
{
 if (actionid > actionc) {
  return 0;
 }

 return (actionv[actionid - 1].sample & SAMPLER_TASK_MASK);
}
