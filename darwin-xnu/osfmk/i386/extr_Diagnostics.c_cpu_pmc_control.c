
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cpu_fixed_pmcs_enabled; } ;
typedef TYPE_1__ cpu_data_t ;
typedef scalar_t__ boolean_t ;


 int CR4_PCE ;
 TYPE_1__* current_cpu_datap () ;
 int get_cr4 () ;
 int set_cr4 (int) ;
 int wrmsr64 (int,int) ;

void cpu_pmc_control(void *enablep) {

 boolean_t enable = *(boolean_t *)enablep;
 cpu_data_t *cdp = current_cpu_datap();

 if (enable) {
  wrmsr64(0x38F, 0x70000000FULL);
  wrmsr64(0x38D, 0x333);
  set_cr4(get_cr4() | CR4_PCE);

 } else {
  wrmsr64(0x38F, 0);
  wrmsr64(0x38D, 0);
  set_cr4((get_cr4() & ~CR4_PCE));
 }
 cdp->cpu_fixed_pmcs_enabled = enable;



}
