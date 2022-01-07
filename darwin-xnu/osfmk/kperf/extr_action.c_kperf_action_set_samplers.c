
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int sample; } ;


 int EINVAL ;
 int SAMPLER_PMC_CPU ;
 int SAMPLER_PMC_THREAD ;
 unsigned int actionc ;
 TYPE_1__* actionv ;

int
kperf_action_set_samplers(unsigned actionid, uint32_t samplers)
{
 if ((actionid > actionc) || (actionid == 0)) {
  return EINVAL;
 }



 if ((samplers & SAMPLER_PMC_THREAD) && (samplers & SAMPLER_PMC_CPU)) {
  return EINVAL;
 }

 actionv[actionid - 1].sample = samplers;

 return 0;
}
