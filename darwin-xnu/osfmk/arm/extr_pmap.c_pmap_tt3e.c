
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_map_address_t ;
typedef int uint64_t ;
typedef int tt_entry_t ;
typedef int pt_entry_t ;
typedef int pmap_t ;


 int ARM_TTE_TABLE_MASK ;
 int ARM_TTE_TYPE_BLOCK ;
 int ARM_TTE_TYPE_MASK ;
 int ARM_TTE_TYPE_TABLE ;
 int ARM_TTE_VALID ;
 int* PT_ENTRY_NULL ;
 int panic (char*,int ,int ,int ) ;
 scalar_t__ phystokv (int) ;
 int* pmap_tt2e (int ,scalar_t__) ;
 size_t tt3_index (int ,scalar_t__) ;

__attribute__((used)) static inline pt_entry_t *
pmap_tt3e(
  pmap_t pmap,
  vm_map_address_t addr)
{
 pt_entry_t *ptp;
 tt_entry_t *ttp;
 tt_entry_t tte;

 ttp = pmap_tt2e(pmap, addr);
 if (ttp == PT_ENTRY_NULL)
  return (PT_ENTRY_NULL);

 tte = *ttp;





 if ((tte & (ARM_TTE_TYPE_MASK | ARM_TTE_VALID)) != (ARM_TTE_TYPE_TABLE | ARM_TTE_VALID)) {
  return (PT_ENTRY_NULL);
 }


 ptp = &(((pt_entry_t*) phystokv(tte & ARM_TTE_TABLE_MASK))[tt3_index(pmap, addr)]);
 return (ptp);
}
