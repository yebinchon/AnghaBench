
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int tt_entry_t ;
typedef int pt_entry_t ;
typedef scalar_t__ pmap_t ;
typedef int pmap_paddr_t ;
struct TYPE_3__ {scalar_t__ pmap; } ;


 int ARM_PGBYTES ;
 int ARM_PGMASK ;
 scalar_t__ ARM_PTE_IS_COMPRESSED (int) ;
 int ARM_PTE_TYPE_FAULT ;
 int ARM_PTE_TYPE_MASK ;
 int ARM_TTE_TYPE_MASK ;
 int ARM_TTE_TYPE_TABLE ;
 int PMAP_ASSERT_LOCKED (scalar_t__) ;
 int PMAP_LOCK (scalar_t__) ;
 int PMAP_UNLOCK (scalar_t__) ;
 int panic (char*,TYPE_1__*,scalar_t__,int*,...) ;
 scalar_t__ phystokv (int) ;
 int pmap_tt_deallocate (scalar_t__,int*,unsigned int) ;
 int pmap_tte_remove (scalar_t__,int*,unsigned int) ;
 TYPE_1__* tte_get_ptd (int) ;
 int tte_to_pa (int) ;
 int ttetokv (int) ;

__attribute__((used)) static void
pmap_tte_deallocate(
 pmap_t pmap,
 tt_entry_t *ttep,
 unsigned int level)
{
 pmap_paddr_t pa;
 tt_entry_t tte;

 PMAP_ASSERT_LOCKED(pmap);

 tte = *ttep;
 pmap_tte_remove(pmap, ttep, level);

 if ((tte & ARM_TTE_TYPE_MASK) == ARM_TTE_TYPE_TABLE) {
  PMAP_UNLOCK(pmap);



  pa = tte_to_pa(tte) & ~ARM_PGMASK;
  pmap_tt_deallocate(pmap, (tt_entry_t *) phystokv(pa), level+1);
  PMAP_LOCK(pmap);
 }
}
