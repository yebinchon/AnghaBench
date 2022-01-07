
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pal; } ;
struct TYPE_6__ {TYPE_1__ m; } ;
struct TYPE_5__ {scalar_t__ CPUclock; int filter; int gamma; } ;


 TYPE_3__ Pico ;
 TYPE_2__ currentConfig ;
 int pemu_loop_prep () ;
 scalar_t__ plat_target_cpu_clock_get () ;
 int plat_target_cpu_clock_set (scalar_t__) ;
 int plat_target_gamma_set (int ,int ) ;
 int plat_target_hwfilter_set (int) ;
 int plat_target_lcdrate_set (int) ;

__attribute__((used)) static void emu_loop_prep(void)
{
 static int pal_old = -1;
 static int filter_old = -1;

 if (currentConfig.CPUclock != plat_target_cpu_clock_get())
  plat_target_cpu_clock_set(currentConfig.CPUclock);

 if (Pico.m.pal != pal_old) {
  plat_target_lcdrate_set(Pico.m.pal);
  pal_old = Pico.m.pal;
 }

 if (currentConfig.filter != filter_old) {
  plat_target_hwfilter_set(currentConfig.filter);
  filter_old = currentConfig.filter;
 }

 plat_target_gamma_set(currentConfig.gamma, 0);

 pemu_loop_prep();
}
