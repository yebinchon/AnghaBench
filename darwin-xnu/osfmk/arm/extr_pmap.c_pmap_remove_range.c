
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_address_t ;
typedef int uint32_t ;
typedef int pt_entry_t ;
typedef int pmap_t ;


 int PMAP_OPTIONS_REMOVE ;
 int pmap_remove_range_options (int ,int ,int *,int *,int *,int ) ;

__attribute__((used)) static int
pmap_remove_range(
 pmap_t pmap,
 vm_map_address_t va,
 pt_entry_t *bpte,
 pt_entry_t *epte,
 uint32_t *rmv_cnt)
{
 return pmap_remove_range_options(pmap, va, bpte, epte, rmv_cnt,
      PMAP_OPTIONS_REMOVE);
}
