
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gamma; int CPUclock; int EmuOpt; } ;


 int EOPT_WIZ_TEAR_FIX ;
 scalar_t__ GP2X_DEV_GP2X ;
 scalar_t__ GP2X_DEV_WIZ ;
 int POPT_EXT_FM ;
 int PicoOpt ;
 TYPE_1__ currentConfig ;
 int default_cpu_clock ;
 scalar_t__ gp2x_dev_id ;

void pemu_validate_config(void)
{
 if (gp2x_dev_id != GP2X_DEV_GP2X)
  PicoOpt &= ~POPT_EXT_FM;
 if (gp2x_dev_id != GP2X_DEV_WIZ)
  currentConfig.EmuOpt &= ~EOPT_WIZ_TEAR_FIX;

 if (currentConfig.gamma < 10 || currentConfig.gamma > 300)
  currentConfig.gamma = 100;

 if (currentConfig.CPUclock < 10 || currentConfig.CPUclock > 1024)
  currentConfig.CPUclock = default_cpu_clock;
}
