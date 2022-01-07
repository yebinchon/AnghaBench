
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int user_addr_t ;
typedef int uint8_t ;
typedef size_t uint32_t ;
struct TYPE_2__ {int kdebug_flags; int kdebug_cpus; int kdebug_iops; } ;


 int EFAULT ;
 int EINVAL ;
 int KDBG_BUFINIT ;
 int KERN_SUCCESS ;
 scalar_t__ copyout (int *,int ,size_t) ;
 TYPE_1__ kd_ctrl_page ;
 int kdbg_cpumap_init_internal (int ,int ,int **,size_t*) ;
 int kernel_map ;
 int kmem_free (int ,int ,size_t) ;

int
kdbg_readcpumap(user_addr_t user_cpumap, size_t *user_cpumap_size)
{
 uint8_t* cpumap = ((void*)0);
 uint32_t cpumap_size = 0;
 int ret = KERN_SUCCESS;

 if (kd_ctrl_page.kdebug_flags & KDBG_BUFINIT) {
  if (kdbg_cpumap_init_internal(kd_ctrl_page.kdebug_iops, kd_ctrl_page.kdebug_cpus, &cpumap, &cpumap_size) == KERN_SUCCESS) {
   if (user_cpumap) {
    size_t bytes_to_copy = (*user_cpumap_size >= cpumap_size) ? cpumap_size : *user_cpumap_size;
    if (copyout(cpumap, user_cpumap, (size_t)bytes_to_copy)) {
     ret = EFAULT;
    }
   }
   *user_cpumap_size = cpumap_size;
   kmem_free(kernel_map, (vm_offset_t)cpumap, cpumap_size);
  } else
   ret = EINVAL;
 } else
  ret = EINVAL;

 return (ret);
}
