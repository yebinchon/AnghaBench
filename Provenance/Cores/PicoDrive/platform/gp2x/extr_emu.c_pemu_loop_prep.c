
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int analog_deadzone; } ;


 scalar_t__ GP2X_DEV_CAANOO ;
 int IN_CFG_ABS_DEAD_ZONE ;
 TYPE_1__ currentConfig ;
 scalar_t__ gp2x_dev_id ;
 int in_name_to_id (char*) ;
 int in_set_config_int (int ,int ,int ) ;
 int sleep (int ) ;
 int sync () ;

void pemu_loop_prep(void)
{
 if (gp2x_dev_id == GP2X_DEV_CAANOO)
  in_set_config_int(in_name_to_id("evdev:pollux-analog"),
   IN_CFG_ABS_DEAD_ZONE,
   currentConfig.analog_deadzone);


 sync();
 sleep(0);
}
