
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_2__ {int cpu_hibernate; } ;


 TYPE_1__* cpu_datap (int) ;

__attribute__((used)) static boolean_t
pmCPUGetHibernate(int cpu)
{
    return(cpu_datap(cpu)->cpu_hibernate);
}
