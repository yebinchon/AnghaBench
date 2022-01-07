
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ boolean_t ;


 int lowpri_throttle_enabled ;

void
sys_override_io_throttle(boolean_t enable_override)
{
 if (enable_override)
  lowpri_throttle_enabled = 0;
 else
  lowpri_throttle_enabled = 1;
}
