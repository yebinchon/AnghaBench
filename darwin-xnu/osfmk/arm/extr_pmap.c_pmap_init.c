
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int copy_strategy; } ;


 scalar_t__ MAX_ASID ;
 int MEMORY_OBJECT_COPY_NONE ;
 int PAGE_SIZE ;
 int TRUE ;
 int VM_PROT_NONE ;
 int _vm_object_allocate (int ,TYPE_1__*) ;
 int assert (int) ;
 scalar_t__ hard_maxproc ;
 int kernel_map ;
 int mem_size ;
 int pmap_initialized ;
 TYPE_1__* pmap_object ;
 int pmap_pgtrace_init () ;
 int pmap_zone_init () ;
 int pv_init () ;
 int vm_protect (int ,int ,int ,int ,int ) ;

void
pmap_init(
 void)
{





 vm_protect(kernel_map, 0, PAGE_SIZE, TRUE, VM_PROT_NONE);

 pmap_initialized = TRUE;

 pmap_zone_init();







 _vm_object_allocate(mem_size, pmap_object);
 pmap_object->copy_strategy = MEMORY_OBJECT_COPY_NONE;

 pv_init();





 assert(hard_maxproc < MAX_ASID);




}
