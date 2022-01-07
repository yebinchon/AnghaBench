
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cpu_subtype_t ;
struct TYPE_2__ {int cpu_subtype; } ;


 TYPE_1__* getCpuDatap () ;

cpu_subtype_t
cpu_subtype(void)
{
 return (getCpuDatap()->cpu_subtype);
}
