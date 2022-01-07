
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ gp2x_soc_t ;
struct TYPE_2__ {int analog_deadzone; int EmuOpt; int s_PicoOpt; int renderer32x; int CPUclock; } ;


 int EOPT_SHOW_RTC ;
 int EOPT_WIZ_TEAR_FIX ;
 int POPT_EN_MCD_GFX ;
 int POPT_EXT_FM ;
 int RT_8BIT_FAST ;
 scalar_t__ SOCID_MMSP2 ;
 scalar_t__ SOCID_POLLUX ;
 TYPE_1__ defaultConfig ;
 int default_cpu_clock ;
 scalar_t__ soc_detect () ;

void pemu_prep_defconfig(void)
{
 gp2x_soc_t soc;

 defaultConfig.CPUclock = default_cpu_clock;
 defaultConfig.renderer32x = RT_8BIT_FAST;
 defaultConfig.analog_deadzone = 50;

 soc = soc_detect();
 if (soc == SOCID_MMSP2)
  defaultConfig.s_PicoOpt |= POPT_EXT_FM;
 else if (soc == SOCID_POLLUX) {
  defaultConfig.EmuOpt |= EOPT_WIZ_TEAR_FIX|EOPT_SHOW_RTC;
  defaultConfig.s_PicoOpt |= POPT_EN_MCD_GFX;
 }
}
