
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
kperf_action_get_filter(unsigned actionid, int *pid_out)
{
 if ((actionid > actionc)) {
  return EINVAL;
 }

 if (actionid == 0) {
  *pid_out = -1;
 } else {
  *pid_out = actionv[actionid - 1].pid_filter;
 }

 return 0;
}
