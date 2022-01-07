
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_sync_t ;
typedef int cpumask_t ;
typedef int cpu_t ;


 int mp_cpus_call1 (int ,int ,void (*) (void*,void*),void*,int *,int *) ;

cpu_t
mp_cpus_call(
 cpumask_t cpus,
 mp_sync_t mode,
        void (*action_func)(void *),
        void *arg)
{
 return mp_cpus_call1(
   cpus,
   mode,
   (void (*)(void *,void *))action_func,
   arg,
   ((void*)0),
   ((void*)0));
}
