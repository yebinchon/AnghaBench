
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ userdata; } ;


 int EINVAL ;
 unsigned int actionc ;
 TYPE_1__* actionv ;

int
kperf_action_get_userdata(unsigned actionid, uint32_t *userdata_out)
{
 if ((actionid > actionc)) {
  return EINVAL;
 }

 if (actionid == 0) {
  *userdata_out = 0;
 } else {
  *userdata_out = actionv[actionid - 1].userdata;
 }

 return 0;
}
