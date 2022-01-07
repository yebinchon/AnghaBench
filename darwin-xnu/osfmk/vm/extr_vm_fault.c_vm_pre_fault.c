
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_map_offset_t ;
struct TYPE_3__ {int pmap; } ;


 int FALSE ;
 int THREAD_UNINT ;
 int VM_KERN_MEMORY_NONE ;
 int VM_PROT_READ ;
 TYPE_1__* current_map () ;
 scalar_t__ pmap_find_phys (int ,int ) ;
 int vm_fault (TYPE_1__*,int ,int ,int ,int ,int ,int *,int ) ;

void
vm_pre_fault(vm_map_offset_t vaddr)
{
 if (pmap_find_phys(current_map()->pmap, vaddr) == 0) {

  vm_fault(current_map(),
   vaddr,
   VM_PROT_READ,
   FALSE,
   VM_KERN_MEMORY_NONE,
   THREAD_UNINT,
   ((void*)0),
   0 );
 }
}
