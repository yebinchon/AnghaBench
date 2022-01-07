
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kperf_sample {int dummy; } ;


 scalar_t__ FALSE ;
 int assert (int) ;
 unsigned int cpu_number () ;
 unsigned int intr_samplec ;
 struct kperf_sample* intr_samplev ;
 scalar_t__ ml_get_interrupts_enabled () ;

struct kperf_sample *
kperf_intr_sample_buffer(void)
{
 unsigned ncpu = cpu_number();

 assert(ml_get_interrupts_enabled() == FALSE);
 assert(ncpu < intr_samplec);

 return &(intr_samplev[ncpu]);
}
