
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct TYPE_4__ {scalar_t__ affinity_set; } ;


 scalar_t__ AFFINITY_SET_NULL ;
 int thread_affinity_terminate (TYPE_1__*) ;

void
thread_affinity_exec(thread_t thread)
{
 if (thread->affinity_set != AFFINITY_SET_NULL)
  thread_affinity_terminate(thread);
}
