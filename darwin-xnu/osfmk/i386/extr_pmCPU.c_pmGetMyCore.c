
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int x86_core_t ;
struct TYPE_4__ {int * core; } ;
struct TYPE_5__ {TYPE_1__ lcpu; } ;
typedef TYPE_2__ cpu_data_t ;


 TYPE_2__* current_cpu_datap () ;

__attribute__((used)) static x86_core_t *
pmGetMyCore(void)
{
    cpu_data_t *cpup = current_cpu_datap();

    return(cpup->lcpu.core);
}
