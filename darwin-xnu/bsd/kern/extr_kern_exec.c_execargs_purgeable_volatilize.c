
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_SUCCESS ;
 int VM_PURGABLE_ORDERING_OBSOLETE ;
 int VM_PURGABLE_SET_STATE ;
 int VM_PURGABLE_VOLATILE ;
 int assert (int) ;
 int bsd_pageable_map ;
 scalar_t__ vm_purgable_control (int ,int ,int ,int*) ;

__attribute__((used)) static kern_return_t
execargs_purgeable_volatilize(void *execarg_address) {
 int state = VM_PURGABLE_VOLATILE | VM_PURGABLE_ORDERING_OBSOLETE;
 kern_return_t kr;
 kr = vm_purgable_control(bsd_pageable_map, (vm_offset_t) execarg_address, VM_PURGABLE_SET_STATE, &state);

 assert(kr == KERN_SUCCESS);

 return kr;
}
