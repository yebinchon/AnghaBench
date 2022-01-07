
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_offset_t ;
typedef int pt_entry_t ;
typedef int pmap_t ;


 int PMAP_OPTIONS_REMOVE ;
 int pmap_remove_range_options (int ,int ,int *,int *,int ) ;

void
pmap_remove_range(
 pmap_t pmap,
 vm_map_offset_t start_vaddr,
 pt_entry_t *spte,
 pt_entry_t *epte)
{
 pmap_remove_range_options(pmap, start_vaddr, spte, epte,
      PMAP_OPTIONS_REMOVE);
}
