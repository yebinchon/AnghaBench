
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LCK_ATTR_NULL ;
 int LCK_GRP_ATTR_NULL ;
 int SHARED_REGION_TRACE_DEBUG (char*) ;
 int lck_grp_alloc_init (char*,int ) ;
 int lck_mtx_init (int *,int ,int ) ;
 int queue_init (int *) ;
 int vm_shared_region_lck_grp ;
 int vm_shared_region_lock ;
 int vm_shared_region_queue ;

void
vm_shared_region_init(void)
{
 SHARED_REGION_TRACE_DEBUG(
  ("shared_region: -> init\n"));

 vm_shared_region_lck_grp = lck_grp_alloc_init("vm shared region",
            LCK_GRP_ATTR_NULL);
 lck_mtx_init(&vm_shared_region_lock,
       vm_shared_region_lck_grp,
       LCK_ATTR_NULL);

 queue_init(&vm_shared_region_queue);

 SHARED_REGION_TRACE_DEBUG(
  ("shared_region: <- init\n"));
}
