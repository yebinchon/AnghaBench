
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYNC ;
 int cpu_to_cpumask (int) ;
 int mp_cpus_call (int ,int ,void (*) (void*),void*) ;

void
timer_call_cpu(int cpu, void (*fn)(void *), void *arg)
{
 mp_cpus_call(cpu_to_cpumask(cpu), SYNC, fn, arg);
}
