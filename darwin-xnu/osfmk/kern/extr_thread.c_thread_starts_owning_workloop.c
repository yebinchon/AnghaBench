
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct TYPE_3__ {int kqwl_owning_count; } ;


 int atomic_fetch_add_explicit (int *,int,int ) ;
 int memory_order_relaxed ;

void
thread_starts_owning_workloop(thread_t thread)
{
 atomic_fetch_add_explicit(&thread->kqwl_owning_count, 1,
   memory_order_relaxed);
}
