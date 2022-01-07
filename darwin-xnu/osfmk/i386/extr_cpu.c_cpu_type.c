
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cpu_type_t ;
struct TYPE_2__ {int cpu_type; } ;


 TYPE_1__* current_cpu_datap () ;

cpu_type_t
cpu_type(void)
{
 return (current_cpu_datap()->cpu_type);
}
