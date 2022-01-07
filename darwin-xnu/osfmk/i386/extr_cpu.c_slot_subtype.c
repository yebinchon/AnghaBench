
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cpu_subtype_t ;
struct TYPE_2__ {int cpu_subtype; } ;


 TYPE_1__* cpu_datap (int) ;

cpu_subtype_t
slot_subtype(
 int slot_num)
{
 return (cpu_datap(slot_num)->cpu_subtype);
}
