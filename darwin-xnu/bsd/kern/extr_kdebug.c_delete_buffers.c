
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_size_t ;
typedef int vm_offset_t ;
struct kd_storage_buffers {int dummy; } ;
struct kd_bufinfo {int dummy; } ;
struct TYPE_6__ {scalar_t__ kdsb_size; scalar_t__ kdsb_addr; } ;
struct TYPE_4__ {int raw; } ;
struct TYPE_5__ {int kdebug_cpus; int kdebug_flags; int * kdebug_iops; TYPE_1__ kds_free_list; } ;


 int KDBG_BUFINIT ;
 int KDCOPYBUF_SIZE ;
 int KDS_PTR_NULL ;
 TYPE_3__* kd_bufs ;
 TYPE_2__ kd_ctrl_page ;
 int * kdbip ;
 int * kdcopybuf ;
 int kernel_map ;
 int kmem_free (int ,int ,int) ;
 unsigned int n_storage_buffers ;

__attribute__((used)) static void
delete_buffers(void)
{
 unsigned int i;

 if (kd_bufs) {
  for (i = 0; i < n_storage_buffers; i++) {
   if (kd_bufs[i].kdsb_addr) {
    kmem_free(kernel_map, (vm_offset_t)kd_bufs[i].kdsb_addr, (vm_size_t)kd_bufs[i].kdsb_size);
   }
  }
  kmem_free(kernel_map, (vm_offset_t)kd_bufs, (vm_size_t)(n_storage_buffers * sizeof(struct kd_storage_buffers)));

  kd_bufs = ((void*)0);
  n_storage_buffers = 0;
 }
 if (kdcopybuf) {
  kmem_free(kernel_map, (vm_offset_t)kdcopybuf, KDCOPYBUF_SIZE);

  kdcopybuf = ((void*)0);
 }
 kd_ctrl_page.kds_free_list.raw = KDS_PTR_NULL;

 if (kdbip) {
  kmem_free(kernel_map, (vm_offset_t)kdbip, sizeof(struct kd_bufinfo) * kd_ctrl_page.kdebug_cpus);

  kdbip = ((void*)0);
 }
        kd_ctrl_page.kdebug_iops = ((void*)0);
 kd_ctrl_page.kdebug_cpus = 0;
 kd_ctrl_page.kdebug_flags &= ~KDBG_BUFINIT;
}
