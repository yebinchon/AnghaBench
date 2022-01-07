
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cpu_type_t ;
struct TYPE_2__ {int cpu_type; } ;


 TYPE_1__* cpu_datap (int) ;

cpu_type_t
slot_type(int slot_num)
{
 return (cpu_datap(slot_num)->cpu_type);
}
