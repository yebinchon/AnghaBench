
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ cpu_get_decrementer_func; } ;
typedef TYPE_1__ cpu_data_t ;


 scalar_t__ FALSE ;
 int assert (int) ;
 TYPE_1__* getCpuDatap () ;
 scalar_t__ ml_get_interrupts_enabled () ;
 scalar_t__ stub1 () ;

uint32_t
ml_get_decrementer()
{
 cpu_data_t *cdp = getCpuDatap();
 uint32_t dec;

 assert(ml_get_interrupts_enabled() == FALSE);

 if (cdp->cpu_get_decrementer_func) {
  dec = ((uint32_t (*)(void))cdp->cpu_get_decrementer_func)();
 } else {
  uint64_t wide_val;

  __asm__ volatile("mrs %0, CNTP_TVAL_EL0" : "=r"(wide_val));
  dec = (uint32_t)wide_val;
  assert(wide_val == (uint64_t)dec);
 }

 return dec;
}
