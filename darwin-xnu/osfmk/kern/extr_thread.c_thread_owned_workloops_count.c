
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* thread_t ;
struct TYPE_3__ {int kqwl_owning_count; } ;


 int atomic_load_explicit (int *,int ) ;
 int memory_order_relaxed ;

uint32_t
thread_owned_workloops_count(thread_t thread)
{
 return atomic_load_explicit(&thread->kqwl_owning_count,
   memory_order_relaxed);
}
