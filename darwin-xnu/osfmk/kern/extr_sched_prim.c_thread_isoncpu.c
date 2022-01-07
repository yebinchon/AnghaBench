
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int boolean_t ;
struct TYPE_3__ {int state; scalar_t__ runq; int kernel_stack; } ;


 int FALSE ;
 scalar_t__ PROCESSOR_NULL ;
 int TH_RUN ;
 int TRUE ;

__attribute__((used)) static inline boolean_t
thread_isoncpu(thread_t thread)
{

 if (!(thread->state & TH_RUN))
  return (FALSE);



 if (thread->runq != PROCESSOR_NULL)
  return (FALSE);





 if (!thread->kernel_stack)
  return (FALSE);
 return (TRUE);
}
