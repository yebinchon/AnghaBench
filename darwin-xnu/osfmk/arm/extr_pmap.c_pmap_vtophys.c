
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64_t ;
typedef int tt_entry_t ;
typedef scalar_t__ pt_entry_t ;
typedef scalar_t__ ppnum_t ;
typedef TYPE_1__* pmap_t ;
typedef int addr64_t ;
struct TYPE_9__ {int min; int max; } ;


 int ARM_PGMASK ;
 scalar_t__ ARM_PTE_IS_COMPRESSED (scalar_t__) ;
 int ARM_PTE_MASK ;
 int ARM_TTE_BLOCK_L2_MASK ;
 int ARM_TTE_BLOCK_SUPER ;
 int ARM_TTE_TABLE_MASK ;
 int ARM_TTE_TYPE_BLOCK ;
 int ARM_TTE_TYPE_MASK ;
 int ARM_TTE_TYPE_TABLE ;
 int ARM_TTE_VALID ;
 int ARM_TT_L1_BLOCK_OFFMASK ;
 int ARM_TT_L1_SUPER_OFFMASK ;
 int ARM_TT_L2_OFFMASK ;
 int ARM_TT_L3_OFFMASK ;
 scalar_t__ atop (int) ;
 int panic (char*,TYPE_1__*,int,scalar_t__*,int ,scalar_t__) ;
 scalar_t__ phystokv (int) ;
 int* pmap_tt1e (TYPE_1__*,int) ;
 int* pmap_tt2e (TYPE_1__*,int) ;
 int* pmap_tte (TYPE_1__*,int) ;
 int pte_to_pa (scalar_t__) ;
 int ptenum (int) ;
 int sectte_to_pa (int) ;
 int suptte_to_pa (int) ;
 size_t tt2_index (TYPE_1__*,int) ;
 size_t tt3_index (TYPE_1__*,int) ;
 scalar_t__ ttetokv (int) ;

ppnum_t
pmap_vtophys(
 pmap_t pmap,
 addr64_t va)
{
 if ((va < pmap->min) || (va >= pmap->max)) {
  return 0;
 }
 tt_entry_t *ttp;
 tt_entry_t tte;
 ppnum_t ppn=0;
 ttp = pmap_tt1e(pmap, va);
 tte = *ttp;
 if ((tte & (ARM_TTE_TYPE_MASK | ARM_TTE_VALID)) != (ARM_TTE_TYPE_TABLE | ARM_TTE_VALID))
  return (ppn);

 tte = ((tt_entry_t*) phystokv(tte & ARM_TTE_TABLE_MASK))[tt2_index(pmap, va)];

 if ((tte & ARM_TTE_VALID) != (ARM_TTE_VALID))
  return (ppn);

 if ((tte & ARM_TTE_TYPE_MASK) == ARM_TTE_TYPE_BLOCK) {
  ppn = (ppnum_t) atop((tte & ARM_TTE_BLOCK_L2_MASK)| (va & ARM_TT_L2_OFFMASK));
  return(ppn);
 }
 tte = ((tt_entry_t*) phystokv(tte & ARM_TTE_TABLE_MASK))[tt3_index(pmap, va)];
 ppn = (ppnum_t) atop((tte & ARM_PTE_MASK)| (va & ARM_TT_L3_OFFMASK));


 return ppn;
}
