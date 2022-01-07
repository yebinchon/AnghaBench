
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ vm_map_address_t ;
typedef int uint64_t ;
typedef int tt_entry_t ;
typedef TYPE_1__* pmap_t ;
struct TYPE_6__ {int* tte; } ;


 int ARM_TTE_TABLE_MASK ;
 int ARM_TTE_TYPE_BLOCK ;
 int ARM_TTE_TYPE_MASK ;
 int ARM_TTE_TYPE_TABLE ;
 int ARM_TTE_VALID ;
 int* PT_ENTRY_NULL ;
 int panic (char*,TYPE_1__*,int ,int ) ;
 scalar_t__ phystokv (int) ;
 int* pmap_tt1e (TYPE_1__*,scalar_t__) ;
 size_t tt2_index (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static inline tt_entry_t *
pmap_tt2e(pmap_t pmap,
  vm_map_address_t addr)
{



 tt_entry_t *ttp;
 tt_entry_t tte;

 ttp = pmap_tt1e(pmap, addr);
 tte = *ttp;




 if ((tte & (ARM_TTE_TYPE_MASK | ARM_TTE_VALID)) != (ARM_TTE_TYPE_TABLE | ARM_TTE_VALID))
  return (PT_ENTRY_NULL);

 ttp = &((tt_entry_t*) phystokv(tte & ARM_TTE_TABLE_MASK))[tt2_index(pmap, addr)];
 return ((tt_entry_t *)ttp);

}
