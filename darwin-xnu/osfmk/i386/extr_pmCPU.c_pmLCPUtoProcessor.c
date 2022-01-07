
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int processor_t ;
struct TYPE_2__ {int cpu_processor; } ;


 TYPE_1__* cpu_datap (int) ;

processor_t
pmLCPUtoProcessor(int lcpu)
{
    return(cpu_datap(lcpu)->cpu_processor);
}
