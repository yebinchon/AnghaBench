
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_SUCCESS ;
 int cpu_machine_init () ;
 int cpu_number () ;
 scalar_t__ intel_startCPU (int) ;
 scalar_t__ intel_startCPU_fast (int) ;
 int kprintf (char*,int) ;

kern_return_t
cpu_start(
 int cpu)
{
 kern_return_t ret;

 if (cpu == cpu_number()) {
  cpu_machine_init();
  return KERN_SUCCESS;
 }






 ret = intel_startCPU_fast(cpu);
 if (ret != KERN_SUCCESS) {




  ret = intel_startCPU(cpu);
 }

 if (ret != KERN_SUCCESS)
  kprintf("cpu: cpu_start(%d) returning failure!\n", cpu);

 return(ret);
}
