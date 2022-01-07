
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_attr_t ;


 int EINVAL ;
 scalar_t__ SCHED_MAX ;
 int SCHED_OTHER ;
 scalar_t__ ptw32_is_attr (int const*) ;

int
pthread_attr_getschedpolicy (const pthread_attr_t * attr, int *policy)
{
  if (ptw32_is_attr (attr) != 0 || policy == ((void*)0))
    {
      return EINVAL;
    }





  if (policy <= (int *) SCHED_MAX)
    {
      return EINVAL;
    }

  *policy = SCHED_OTHER;

  return 0;
}
