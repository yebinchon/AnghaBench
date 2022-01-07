
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ vm_address_t ;
typedef scalar_t__ va ;
struct TYPE_2__ {scalar_t__ len; scalar_t__ va; scalar_t__ pa; } ;


 size_t PTOV_TABLE_SIZE ;
 scalar_t__ gPhysBase ;
 scalar_t__ gPhysSize ;
 scalar_t__ gVirtBase ;
 int panic (char*,void*) ;
 TYPE_1__* ptov_table ;

vm_offset_t
ml_static_vtop(vm_offset_t va)
{
 for (size_t i = 0; (i < PTOV_TABLE_SIZE) && (ptov_table[i].len != 0); i++) {
  if ((va >= ptov_table[i].va) && (va < (ptov_table[i].va + ptov_table[i].len)))
   return (va - ptov_table[i].va + ptov_table[i].pa);
 }
 if (((vm_address_t)(va) - gVirtBase) >= gPhysSize)
  panic("ml_static_vtop(): illegal VA: %p\n", (void*)va);
 return ((vm_address_t)(va) - gVirtBase + gPhysBase);
}
