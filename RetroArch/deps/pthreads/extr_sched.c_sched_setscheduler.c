
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int EPERM ;
 int errno ;

int
sched_setscheduler (pid_t pid, int policy)
{
  errno = EPERM;
  return -1;
}
