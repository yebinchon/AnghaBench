
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int processor_set_t ;


 int THREAD_NULL ;
 int pset_unlock (int ) ;

__attribute__((used)) static thread_t
sched_multiq_steal_thread(processor_set_t pset)
{
 pset_unlock(pset);
 return (THREAD_NULL);
}
