
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kperf_timer {int dummy; } ;


 int kperf_sample_cpu (struct kperf_timer*,int,int) ;

void
kperf_ipi_handler(void *param)
{
 kperf_sample_cpu((struct kperf_timer *)param, 0, 0);
}
