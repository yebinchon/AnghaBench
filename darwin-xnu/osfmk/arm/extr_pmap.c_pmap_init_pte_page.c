
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int pt_entry_t ;
typedef int pt_desc_t ;
typedef int pmap_t ;
typedef scalar_t__ boolean_t ;


 int ARM_PGBYTES ;
 int DMB_ISHST ;
 int PVH_TYPE_NULL ;
 int PVH_TYPE_PTDP ;
 int __builtin_arm_dmb (int ) ;
 int bzero (int *,int ) ;
 int ml_static_vtop (int ) ;
 int pa_index (int ) ;
 scalar_t__ pai_to_pvh (int ) ;
 int panic (char*,int *) ;
 int * ptd_alloc (int ) ;
 int ptd_init (int *,int ,int ,unsigned int,int *) ;
 scalar_t__ pvh_list (int *) ;
 scalar_t__ pvh_test_type (int *,int ) ;
 int pvh_update_head_unlocked (int *,int *,int ) ;

void
pmap_init_pte_page(
 pmap_t pmap,
 pt_entry_t *pte_p,
 vm_offset_t va,
 unsigned int ttlevel,
 boolean_t alloc_ptd)
{
 pt_desc_t *ptdp = ((void*)0);
 vm_offset_t *pvh;

 pvh = (vm_offset_t *)(pai_to_pvh(pa_index(ml_static_vtop((vm_offset_t)pte_p))));

 if (pvh_test_type(pvh, PVH_TYPE_NULL)) {
  if (alloc_ptd) {





   ptdp = ptd_alloc(pmap);
   pvh_update_head_unlocked(pvh, ptdp, PVH_TYPE_PTDP);
  } else {
   panic("pmap_init_pte_page(): pte_p %p", pte_p);
  }
 } else if (pvh_test_type(pvh, PVH_TYPE_PTDP)) {
  ptdp = (pt_desc_t*)(pvh_list(pvh));
 } else {
  panic("pmap_init_pte_page(): invalid PVH type for pte_p %p", pte_p);
 }

 bzero(pte_p, ARM_PGBYTES);


 __builtin_arm_dmb(DMB_ISHST);
 ptd_init(ptdp, pmap, va, ttlevel, pte_p);
}
