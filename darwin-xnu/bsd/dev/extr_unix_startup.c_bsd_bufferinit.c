
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;
typedef scalar_t__ kern_return_t ;


 int FALSE ;
 scalar_t__ KERN_SUCCESS ;
 int MCLBYTES ;
 int VM_FLAGS_ANYWHERE ;
 int VM_KERN_MEMORY_MBUF ;
 int VM_MAP_KERNEL_FLAGS_NONE ;
 int bsd_startupearly () ;
 int bufinit () ;
 int kernel_map ;
 scalar_t__ kmem_suballoc (int ,int *,int ,int ,int ,int ,int ,int *) ;
 int mb_map ;
 int mbutl ;
 int nmbclusters ;
 int panic (char*) ;

void
bsd_bufferinit(void)
{
 bsd_startupearly();
 bufinit();
}
