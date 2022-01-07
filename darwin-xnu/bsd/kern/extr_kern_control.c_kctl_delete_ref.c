
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kctl {scalar_t__ kctlref; } ;
typedef scalar_t__ kern_ctl_ref ;
struct TYPE_2__ {int kcs_bad_kctlref; } ;


 uintptr_t KCTLREF_INDEX_MASK ;
 int LCK_MTX_ASSERT_OWNED ;
 int ctl_mtx ;
 struct kctl** kctl_table ;
 int kctl_tbl_count ;
 uintptr_t kctl_tbl_size ;
 TYPE_1__ kctlstat ;
 int lck_mtx_assert (int ,int ) ;

__attribute__((used)) static void
kctl_delete_ref(kern_ctl_ref kctlref)
{



 uintptr_t i = (((uintptr_t)kctlref) & KCTLREF_INDEX_MASK) - 1;

 lck_mtx_assert(ctl_mtx, LCK_MTX_ASSERT_OWNED);

 if (i < kctl_tbl_size) {
  struct kctl *kctl = kctl_table[i];

  if (kctl->kctlref == kctlref) {
   kctl_table[i] = ((void*)0);
   kctl_tbl_count--;
  } else {
   kctlstat.kcs_bad_kctlref++;
  }
 } else {
  kctlstat.kcs_bad_kctlref++;
 }
}
