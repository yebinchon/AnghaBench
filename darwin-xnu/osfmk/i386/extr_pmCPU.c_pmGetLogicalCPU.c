
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x86_lcpu_t ;


 int * cpu_to_lcpu (int) ;

x86_lcpu_t *
pmGetLogicalCPU(int cpu)
{
    return(cpu_to_lcpu(cpu));
}
