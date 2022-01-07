
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int BASEPRI_FOREGROUND ;
 int BASEPRI_PREEMPT ;
 int FALSE ;
 int MINPRI_KERNEL ;
 int TRUE ;

__attribute__((used)) static boolean_t
sched_proto_priority_is_urgent(int priority)
{
 if (priority <= BASEPRI_FOREGROUND)
  return FALSE;

 if (priority < MINPRI_KERNEL)
  return TRUE;

 if (priority >= BASEPRI_PREEMPT)
  return TRUE;

 return FALSE;
}
