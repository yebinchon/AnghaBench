
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;


 scalar_t__ PAGE_MASK ;
 int PMAP_EXPAND_OPTIONS_ALIASMAP ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int assert (int) ;
 scalar_t__ dblmap_max ;
 int pmap_alias (scalar_t__,scalar_t__,scalar_t__,int,int ) ;

vm_offset_t dyn_dblmap(vm_offset_t cva, vm_offset_t sz) {
 vm_offset_t ava = dblmap_max;

 assert((sz & PAGE_MASK) == 0);
 assert(cva != 0);

 pmap_alias(ava, cva, cva + sz, VM_PROT_READ | VM_PROT_WRITE, PMAP_EXPAND_OPTIONS_ALIASMAP);
 dblmap_max += sz;
 return (ava - cva);
}
