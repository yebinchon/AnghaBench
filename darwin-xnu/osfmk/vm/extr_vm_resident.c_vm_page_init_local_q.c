
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpl {scalar_t__ vpl_external_count; scalar_t__ vpl_internal_count; scalar_t__ vpl_count; int vpl_queue; } ;
struct TYPE_2__ {struct vpl vpl; } ;
struct vplq {TYPE_1__ vpl_un; } ;


 unsigned int ROUNDUP_NEXTP2 (unsigned int) ;
 unsigned int VM_PACKED_POINTER_ALIGNMENT ;
 int VPL_LOCK_INIT (struct vpl*,int *,int *) ;
 scalar_t__ kalloc (unsigned int) ;
 unsigned int ml_get_max_cpus () ;
 int vm_page_lck_attr ;
 int vm_page_lck_grp_local ;
 struct vplq* vm_page_local_q ;
 unsigned int vm_page_local_q_count ;
 int vm_page_queue_init (int *) ;

void
vm_page_init_local_q()
{
 unsigned int num_cpus;
 unsigned int i;
 struct vplq *t_local_q;

 num_cpus = ml_get_max_cpus();




 if (num_cpus >= 2) {







  t_local_q = (struct vplq *)kalloc(ROUNDUP_NEXTP2(num_cpus * sizeof(struct vplq)));


  for (i = 0; i < num_cpus; i++) {
   struct vpl *lq;

   lq = &t_local_q[i].vpl_un.vpl;
   VPL_LOCK_INIT(lq, &vm_page_lck_grp_local, &vm_page_lck_attr);
   vm_page_queue_init(&lq->vpl_queue);
   lq->vpl_count = 0;
   lq->vpl_internal_count = 0;
   lq->vpl_external_count = 0;
  }
  vm_page_local_q_count = num_cpus;

  vm_page_local_q = (struct vplq *)t_local_q;
 }
}
