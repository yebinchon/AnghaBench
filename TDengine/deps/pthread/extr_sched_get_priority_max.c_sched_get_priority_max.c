
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int PTW32_MAX (int ,int ) ;
 int SCHED_MAX ;
 int SCHED_MIN ;
 int THREAD_PRIORITY_IDLE ;
 int THREAD_PRIORITY_TIME_CRITICAL ;
 int errno ;

int
sched_get_priority_max (int policy)
{
  if (policy < SCHED_MIN || policy > SCHED_MAX)
    {
      errno = EINVAL;
      return -1;
    }






  return PTW32_MAX (THREAD_PRIORITY_IDLE, THREAD_PRIORITY_TIME_CRITICAL);

}
