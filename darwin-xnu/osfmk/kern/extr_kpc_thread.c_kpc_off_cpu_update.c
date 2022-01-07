
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kpc_off_cpu_active ;
 int kpc_threads_counting ;

void
kpc_off_cpu_update(void)
{
 kpc_off_cpu_active = kpc_threads_counting;
}
