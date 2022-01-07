
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pid_filter; } ;


 int EINVAL ;
 unsigned int actionc ;
 TYPE_1__* actionv ;

int
kperf_action_set_filter(unsigned actionid, int pid)
{
 if ((actionid > actionc) || (actionid == 0)) {
  return EINVAL;
 }

 actionv[actionid - 1].pid_filter = pid;

 return 0;
}
