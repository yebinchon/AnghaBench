
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct TYPE_4__ {scalar_t__ suspend_parked; int suspend_count; } ;


 scalar_t__ FALSE ;
 int assert (int) ;
 int thread_set_apc_ast (TYPE_1__*) ;

void
thread_hold(thread_t thread)
{
 if (thread->suspend_count++ == 0) {
  thread_set_apc_ast(thread);
  assert(thread->suspend_parked == FALSE);
 }
}
