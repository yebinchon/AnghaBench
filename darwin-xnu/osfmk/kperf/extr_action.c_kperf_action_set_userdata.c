
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int userdata; } ;


 int EINVAL ;
 unsigned int actionc ;
 TYPE_1__* actionv ;

int
kperf_action_set_userdata(unsigned actionid, uint32_t userdata)
{
 if ((actionid > actionc) || (actionid == 0)) {
  return EINVAL;
 }

 actionv[actionid - 1].userdata = userdata;

 return 0;
}
