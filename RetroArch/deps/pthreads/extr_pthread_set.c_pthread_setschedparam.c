
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_param {int sched_priority; } ;
typedef int pthread_t ;


 int EINVAL ;
 int ENOTSUP ;
 int SCHED_MAX ;
 int SCHED_MIN ;
 int SCHED_OTHER ;
 int pte_setthreadpriority (int ,int,int ) ;
 int pthread_kill (int ,int ) ;

int pthread_setschedparam (pthread_t thread, int policy,
      const struct sched_param *param)
{
   int result;


   result = pthread_kill (thread, 0);
   if (0 != result)
      return result;


   if (policy < SCHED_MIN || policy > SCHED_MAX)
      return EINVAL;


   if (policy != SCHED_OTHER)
      return ENOTSUP;

   return (pte_setthreadpriority (thread, policy, param->sched_priority));
}
