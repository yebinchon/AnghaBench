
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ xstate_t ;
typedef TYPE_1__* thread_t ;
struct TYPE_6__ {scalar_t__ xstate; } ;
struct TYPE_5__ {int task; } ;


 TYPE_3__* THREAD_TO_PCB (TYPE_1__*) ;
 scalar_t__ UNDEFINED ;
 scalar_t__ task_xstate (int ) ;

__attribute__((used)) static xstate_t
thread_xstate(thread_t thread)
{
 xstate_t xs = THREAD_TO_PCB(thread)->xstate;
 if (xs == UNDEFINED)
  return task_xstate(thread->task);
 else
  return xs;
}
