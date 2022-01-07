
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vm_size_t ;
typedef scalar_t__ vm_offset_t ;
typedef int vm_object_size_t ;
typedef scalar_t__ vm_map_offset_t ;
typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct pv_rooted_entry {int dummy; } ;
struct pv_hashed_entry_t {int dummy; } ;
struct pv_hashed_entry {int dummy; } ;
struct pmap {int dummy; } ;
typedef TYPE_1__* pv_rooted_entry_t ;
typedef int pv_hashed_entry_t ;
typedef size_t ppnum_t ;
struct TYPE_10__ {scalar_t__ type; size_t base; size_t end; } ;
typedef TYPE_2__ pmap_memory_region_t ;
struct TYPE_11__ {int * pm_obj; int * pm_obj_pdpt; int * pm_obj_pml4; } ;
struct TYPE_9__ {int qlink; TYPE_5__* pmap; scalar_t__ va_and_flags; } ;


 scalar_t__ FALSE ;
 int HV_VMX_EPTP_ENABLE_AD_FLAGS ;
 int HV_VMX_EPTP_MEMORY_TYPE_WB ;
 int HV_VMX_EPTP_WALK_LENGTH (int) ;
 int KERNEL_BASEMENT ;
 scalar_t__ KERN_SUCCESS ;
 int KMA_KOBJECT ;
 int KMA_PERMANENT ;
 scalar_t__ MAX_PREEMPTION_LATENCY_NS ;
 int MSR_IA32_VMX_EPT_VPID_CAP ;
 int MSR_IA32_VMX_EPT_VPID_CAP_AD_SHIFT ;
 scalar_t__ NPDEPGS ;
 scalar_t__ NPDPTPGS ;
 scalar_t__ NPML4PGS ;
 int PAGE_SIZE ;
 char PHYS_MANAGED ;
 char PHYS_NOENCRYPT ;
 int PMAP_EXPAND_OPTIONS_NONE ;
 scalar_t__ TRUE ;
 scalar_t__ VMX_CAP (int ,int ,int) ;
 int VM_KERN_MEMORY_PMAP ;
 scalar_t__ VM_MIN_KERNEL_ADDRESS ;
 size_t VM_MIN_KERNEL_PAGE ;
 int Z_ALIGNMENT_REQUIRED ;
 int Z_GZALLOC_EXEMPT ;
 int Z_NOENCRYPT ;
 int _vm_object_allocate (int,int *) ;
 int avail_end ;
 int avail_start ;
 size_t highest_hi ;
 size_t i386_btop (int ) ;
 scalar_t__ kEfiConventionalMemory ;
 int kernel_map ;
 scalar_t__ kernel_memory_allocate (int ,scalar_t__*,int,int ,int,int ) ;
 TYPE_5__* kernel_pmap ;
 int kpdptobj_object_store ;
 int kpml4obj_object_store ;
 int kptobj_object_store ;
 size_t last_managed_page ;
 size_t lowest_hi ;
 int max_preemption_latency_tsc ;
 int memset (char*,int ,int) ;
 int npvhashbuckets ;
 scalar_t__ npvhashmask ;
 TYPE_1__* pai_to_pvh (size_t) ;
 int panic (char*) ;
 int pmap_anchor_zone ;
 int pmap_ept_support_ad ;
 int pmap_eptp_flags ;
 int pmap_expand_pml4 (TYPE_5__*,int ,int ) ;
 size_t pmap_find_phys (TYPE_5__*,scalar_t__) ;
 scalar_t__ pmap_initialized ;
 unsigned int pmap_memory_region_count ;
 TYPE_2__* pmap_memory_regions ;
 scalar_t__ pmap_npages ;
 char* pmap_phys_attributes ;
 int pmap_uanchor_zone ;
 int pmap_zone ;
 char* pv_hash_lock_table ;
 int pv_hash_lock_table_size (int) ;
 int * pv_hash_table ;
 int pv_hashed_list_zone ;
 TYPE_1__* pv_head_table ;
 char* pv_lock_table ;
 int pv_lock_table_size (long) ;
 int queue_init (int *) ;
 int round_page (int) ;
 int task_max ;
 int tmrCvt (int ,int ) ;
 int tscFCvtn2t ;
 scalar_t__ vmx_hv_support () ;
 int zinit (int,int,int,char*) ;
 int zone_change (int ,int ,scalar_t__) ;

void
pmap_init(void)
{
 long npages;
 vm_offset_t addr;
 vm_size_t s, vsize;
 vm_map_offset_t vaddr;
 ppnum_t ppn;


 kernel_pmap->pm_obj_pml4 = &kpml4obj_object_store;
 _vm_object_allocate((vm_object_size_t)NPML4PGS * PAGE_SIZE, &kpml4obj_object_store);

 kernel_pmap->pm_obj_pdpt = &kpdptobj_object_store;
 _vm_object_allocate((vm_object_size_t)NPDPTPGS * PAGE_SIZE, &kpdptobj_object_store);

 kernel_pmap->pm_obj = &kptobj_object_store;
 _vm_object_allocate((vm_object_size_t)NPDEPGS * PAGE_SIZE, &kptobj_object_store);
 npages = i386_btop(avail_end);



 s = (vm_size_t) (sizeof(struct pv_rooted_entry) * npages
    + (sizeof (struct pv_hashed_entry_t *) * (npvhashbuckets))
    + pv_lock_table_size(npages)
    + pv_hash_lock_table_size((npvhashbuckets))
    + npages);
 s = round_page(s);
 if (kernel_memory_allocate(kernel_map, &addr, s, 0,
       KMA_KOBJECT | KMA_PERMANENT, VM_KERN_MEMORY_PMAP)
     != KERN_SUCCESS)
  panic("pmap_init");

 memset((char *)addr, 0, s);

 vaddr = addr;
 vsize = s;
 pv_head_table = (pv_rooted_entry_t) addr;
 addr = (vm_offset_t) (pv_head_table + npages);

 pv_hash_table = (pv_hashed_entry_t *)addr;
 addr = (vm_offset_t) (pv_hash_table + (npvhashbuckets));

 pv_lock_table = (char *) addr;
 addr = (vm_offset_t) (pv_lock_table + pv_lock_table_size(npages));

 pv_hash_lock_table = (char *) addr;
 addr = (vm_offset_t) (pv_hash_lock_table + pv_hash_lock_table_size((npvhashbuckets)));

 pmap_phys_attributes = (char *) addr;

 ppnum_t last_pn = i386_btop(avail_end);
        unsigned int i;
 pmap_memory_region_t *pmptr = pmap_memory_regions;
 for (i = 0; i < pmap_memory_region_count; i++, pmptr++) {
  if (pmptr->type != kEfiConventionalMemory)
   continue;
  ppnum_t pn;
  for (pn = pmptr->base; pn <= pmptr->end; pn++) {
   if (pn < last_pn) {
    pmap_phys_attributes[pn] |= PHYS_MANAGED;

    if (pn > last_managed_page)
     last_managed_page = pn;

    if (pn >= lowest_hi && pn <= highest_hi)
     pmap_phys_attributes[pn] |= PHYS_NOENCRYPT;
   }
  }
 }
 while (vsize) {
  ppn = pmap_find_phys(kernel_pmap, vaddr);

  pmap_phys_attributes[ppn] |= PHYS_NOENCRYPT;

  vaddr += PAGE_SIZE;
  vsize -= PAGE_SIZE;
 }




 s = (vm_size_t) sizeof(struct pmap);
 pmap_zone = zinit(s, 400*s, 4096, "pmap");
        zone_change(pmap_zone, Z_NOENCRYPT, TRUE);

 pmap_anchor_zone = zinit(PAGE_SIZE, task_max, PAGE_SIZE, "pagetable anchors");
 zone_change(pmap_anchor_zone, Z_NOENCRYPT, TRUE);






 zone_change(pmap_anchor_zone, Z_ALIGNMENT_REQUIRED, TRUE);



 pmap_uanchor_zone = zinit(PAGE_SIZE, task_max, PAGE_SIZE, "pagetable user anchors");
 zone_change(pmap_uanchor_zone, Z_NOENCRYPT, TRUE);






 zone_change(pmap_uanchor_zone, Z_ALIGNMENT_REQUIRED, TRUE);

 s = (vm_size_t) sizeof(struct pv_hashed_entry);
 pv_hashed_list_zone = zinit(s, 10000*s ,
     4096 * 3 , "pv_list");
 zone_change(pv_hashed_list_zone, Z_NOENCRYPT, TRUE);
 zone_change(pv_hashed_list_zone, Z_GZALLOC_EXEMPT, TRUE);





 vaddr = (vm_map_offset_t) VM_MIN_KERNEL_ADDRESS;
 for (ppn = VM_MIN_KERNEL_PAGE; ppn < i386_btop(avail_start); ppn++) {
  pv_rooted_entry_t pv_e;

  pv_e = pai_to_pvh(ppn);
  pv_e->va_and_flags = vaddr;
  vaddr += PAGE_SIZE;
  pv_e->pmap = kernel_pmap;
  queue_init(&pv_e->qlink);
 }
 pmap_initialized = TRUE;

 max_preemption_latency_tsc = tmrCvt((uint64_t)MAX_PREEMPTION_LATENCY_NS, tscFCvtn2t);





 pmap_expand_pml4(kernel_pmap, KERNEL_BASEMENT, PMAP_EXPAND_OPTIONS_NONE);





}
