
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int x86_die_t ;
struct TYPE_4__ {int * die; } ;
struct TYPE_5__ {TYPE_1__ lcpu; } ;
typedef TYPE_2__ cpu_data_t ;


 TYPE_2__* current_cpu_datap () ;

__attribute__((used)) static x86_die_t *
pmGetMyDie(void)
{
    cpu_data_t *cpup = current_cpu_datap();

    return(cpup->lcpu.die);
}
