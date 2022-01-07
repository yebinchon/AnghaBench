
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef scalar_t__ kern_return_t ;


 int BSD_PAGEABLE_SIZE_PER_EXEC ;
 scalar_t__ KERN_SUCCESS ;
 int VM_FLAGS_ANYWHERE ;
 int VM_FLAGS_PURGABLE ;
 int VM_KERN_MEMORY_NONE ;
 int assert (int) ;
 int bsd_pageable_map ;
 scalar_t__ vm_allocate_kernel (int ,int *,int ,int,int ) ;

__attribute__((used)) static kern_return_t
execargs_purgeable_allocate(char **execarg_address) {
 kern_return_t kr = vm_allocate_kernel(bsd_pageable_map, (vm_offset_t *)execarg_address, BSD_PAGEABLE_SIZE_PER_EXEC, VM_FLAGS_ANYWHERE | VM_FLAGS_PURGABLE, VM_KERN_MEMORY_NONE);
 assert(kr == KERN_SUCCESS);
 return kr;
}
