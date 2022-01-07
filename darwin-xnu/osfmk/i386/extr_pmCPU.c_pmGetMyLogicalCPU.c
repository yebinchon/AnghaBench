
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int x86_lcpu_t ;
struct TYPE_3__ {int lcpu; } ;
typedef TYPE_1__ cpu_data_t ;


 TYPE_1__* current_cpu_datap () ;

x86_lcpu_t *
pmGetMyLogicalCPU(void)
{
    cpu_data_t *cpup = current_cpu_datap();

    return(&cpup->lcpu);
}
