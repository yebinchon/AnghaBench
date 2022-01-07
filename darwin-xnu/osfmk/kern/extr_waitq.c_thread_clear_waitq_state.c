
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct TYPE_3__ {int at_safe_point; int wait_event; int * waitq; } ;


 int FALSE ;
 int NO_EVENT64 ;

__attribute__((used)) static inline void thread_clear_waitq_state(thread_t thread)
{
 thread->waitq = ((void*)0);
 thread->wait_event = NO_EVENT64;
 thread->at_safe_point = FALSE;
}
