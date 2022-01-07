
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int64_t ;


 scalar_t__ IFQ_UPDATE_INTERVAL ;
 scalar_t__ ifclassq_update_interval ;

void
ifclassq_calc_update_interval(u_int64_t *update_interval)
{
 u_int64_t uint = 0;


 if (ifclassq_update_interval != 0)
  uint = ifclassq_update_interval;


 if (uint == 0)
  uint = IFQ_UPDATE_INTERVAL;

 *update_interval = uint;
}
