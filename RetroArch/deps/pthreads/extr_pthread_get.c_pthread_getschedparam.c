
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sched_param {int sched_priority; } ;
typedef scalar_t__ pthread_t ;
struct TYPE_2__ {int sched_priority; } ;
typedef TYPE_1__ pte_thread_t ;


 int EINVAL ;
 scalar_t__ SCHED_MAX ;
 int SCHED_OTHER ;
 int pthread_kill (scalar_t__,int ) ;

int pthread_getschedparam (pthread_t thread, int *policy,
      struct sched_param *param)
{
   int result;


   result = pthread_kill (thread, 0);
   if (0 != result)
      return result;





   if (policy <= (int *) SCHED_MAX || param == ((void*)0))
      return EINVAL;


   *policy = SCHED_OTHER;







   param->sched_priority = ((pte_thread_t *)thread)->sched_priority;

   return 0;
}
