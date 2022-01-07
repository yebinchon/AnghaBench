
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union kds_ptr {scalar_t__ raw; } ;
typedef scalar_t__ uint32_t ;
struct kd_storage {union kds_ptr kds_next; } ;
struct kd_bufinfo {union kds_ptr kd_list_head; } ;
struct TYPE_2__ {int kds_inuse_count; union kds_ptr kds_free_list; } ;


 int FALSE ;
 struct kd_storage* POINTER_FROM_KDS_PTR (union kds_ptr) ;
 TYPE_1__ kd_ctrl_page ;
 struct kd_bufinfo* kdbip ;
 int kds_spin_lock ;
 int lck_spin_lock (int ) ;
 int lck_spin_unlock (int ) ;
 int ml_set_interrupts_enabled (int) ;

void
release_storage_unit(int cpu, uint32_t kdsp_raw)
{
 int s = 0;
 struct kd_storage *kdsp_actual;
 struct kd_bufinfo *kdbp;
 union kds_ptr kdsp;

 kdsp.raw = kdsp_raw;

 s = ml_set_interrupts_enabled(FALSE);
 lck_spin_lock(kds_spin_lock);

 kdbp = &kdbip[cpu];

 if (kdsp.raw == kdbp->kd_list_head.raw) {
  kdsp_actual = POINTER_FROM_KDS_PTR(kdsp);
  kdbp->kd_list_head = kdsp_actual->kds_next;

  kdsp_actual->kds_next = kd_ctrl_page.kds_free_list;
  kd_ctrl_page.kds_free_list = kdsp;

  kd_ctrl_page.kds_inuse_count--;
 }
 lck_spin_unlock(kds_spin_lock);
 ml_set_interrupts_enabled(s);
}
