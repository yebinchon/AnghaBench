
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef uintptr_t pt_entry_t ;


 uintptr_t INTEL_PTE_VALID ;
 scalar_t__ PAGE_SIZE ;

__attribute__((used)) static void
fillkpt(pt_entry_t *base, int prot, uintptr_t src, int index, int count)
{
 int i;
 for (i=0; i<count; i++) {
  base[index] = src | prot | INTEL_PTE_VALID;
  src += PAGE_SIZE;
  index++;
 }
}
