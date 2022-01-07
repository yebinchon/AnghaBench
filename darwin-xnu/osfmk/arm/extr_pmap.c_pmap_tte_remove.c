
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef scalar_t__ tt_entry_t ;
typedef int pmap_t ;
struct TYPE_4__ {TYPE_1__* pt_cnt; } ;
struct TYPE_3__ {scalar_t__ refcnt; } ;


 size_t ARM_PT_DESC_INDEX (int ) ;
 int FLUSH_PTE_RANGE_STRONG (scalar_t__*,scalar_t__*) ;
 int FLUSH_PTE_STRONG (scalar_t__*) ;
 unsigned int PMAP_TT_MAX_LEVEL ;
 int panic (char*,scalar_t__*,...) ;
 TYPE_2__* tte_get_ptd (scalar_t__) ;
 int ttetokv (scalar_t__) ;

__attribute__((used)) static void
pmap_tte_remove(
 pmap_t pmap,
 tt_entry_t *ttep,
 unsigned int level)
{
 tt_entry_t tte = *ttep;

 if (tte == 0) {
  panic("pmap_tte_deallocate(): null tt_entry ttep==%p\n", ttep);
 }

 if (((level+1) == PMAP_TT_MAX_LEVEL) && (tte_get_ptd(tte)->pt_cnt[ARM_PT_DESC_INDEX(ttetokv(*ttep))].refcnt != 0)) {
  panic("pmap_tte_deallocate(): pmap=%p ttep=%p ptd=%p refcnt=0x%x \n", pmap, ttep,
         tte_get_ptd(tte), (tte_get_ptd(tte)->pt_cnt[ARM_PT_DESC_INDEX(ttetokv(*ttep))].refcnt));
 }
 *ttep = (tt_entry_t) 0;
 FLUSH_PTE_STRONG(ttep);

}
