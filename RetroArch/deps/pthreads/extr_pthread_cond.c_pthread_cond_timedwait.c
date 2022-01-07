
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
typedef int pthread_mutex_t ;
typedef int pthread_cond_t ;


 int EINVAL ;
 int pte_cond_timedwait (int *,int *,struct timespec const*) ;

int
pthread_cond_timedwait (pthread_cond_t * cond,
      pthread_mutex_t * mutex,
      const struct timespec *abstime)
{
   if (abstime == ((void*)0))
   {
      return EINVAL;
   }

   return (pte_cond_timedwait (cond, mutex, abstime));
}
