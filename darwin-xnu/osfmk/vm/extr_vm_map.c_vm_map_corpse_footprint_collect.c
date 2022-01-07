
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int vm_size_t ;
typedef scalar_t__ vm_offset_t ;
typedef TYPE_2__* vm_object_t ;
typedef TYPE_3__* vm_map_t ;
typedef int vm_map_offset_t ;
typedef TYPE_4__* vm_map_entry_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct vm_map_corpse_footprint_region {scalar_t__ cfr_vaddr; int cfr_num_pages; } ;
struct vm_map_corpse_footprint_header {int cf_size; int cf_last_region; int cf_last_zeroes; } ;
typedef scalar_t__ kern_return_t ;
struct TYPE_15__ {int vme_start; int vme_end; scalar_t__ iokit_acct; int is_sub_map; } ;
struct TYPE_12__ {int nentries; } ;
struct TYPE_14__ {int has_corpse_footprint; int size; int pmap; struct vm_map_corpse_footprint_header* vmmap_corpse_footprint; TYPE_1__ hdr; } ;
struct TYPE_13__ {scalar_t__ purgable; scalar_t__ internal; } ;


 scalar_t__ KERN_NOT_SUPPORTED ;
 scalar_t__ KERN_RESOURCE_SHORTAGE ;
 scalar_t__ KERN_SUCCESS ;
 int KMA_GUARD_LAST ;
 int KMA_PAGEABLE ;
 int PAGE_SIZE ;
 int PMAP_QUERY_PAGE_INTERNAL ;
 int PMAP_QUERY_PAGE_PRESENT ;
 TYPE_2__* VME_OBJECT (TYPE_4__*) ;
 int VM_KERN_MEMORY_DIAG ;
 int VM_MAP_CORPSE_FOOTPRINT_INFO_MAX_SIZE ;
 TYPE_2__* VM_OBJECT_NULL ;
 scalar_t__ VM_PURGABLE_DENY ;
 int assert (int) ;
 int kernel_map ;
 scalar_t__ kernel_memory_allocate (int ,scalar_t__*,int,int ,int,int ) ;
 scalar_t__ os_add3_overflow (int,scalar_t__,int,scalar_t__*) ;
 scalar_t__ os_add_overflow (int,int,scalar_t__*) ;
 int pmap_query_page_info (int ,int,int*) ;
 int round_page (int) ;
 int roundup (int,int) ;
 int vm_map_corpse_footprint_full ;
 struct vm_map_corpse_footprint_region* vm_map_corpse_footprint_new_region (struct vm_map_corpse_footprint_header*) ;
 int vm_map_corpse_footprint_no_buf ;
 int vm_map_lock_assert_exclusive (TYPE_3__*) ;

kern_return_t
vm_map_corpse_footprint_collect(
 vm_map_t old_map,
 vm_map_entry_t old_entry,
 vm_map_t new_map)
{
 vm_map_offset_t va;
 int disp;
 kern_return_t kr;
 struct vm_map_corpse_footprint_header *footprint_header;
 struct vm_map_corpse_footprint_region *footprint_region;
 struct vm_map_corpse_footprint_region *new_footprint_region;
 unsigned char *next_disp_p;
 uintptr_t footprint_edge;
 uint32_t num_pages_tmp;

 va = old_entry->vme_start;

 vm_map_lock_assert_exclusive(old_map);
 vm_map_lock_assert_exclusive(new_map);

 assert(new_map->has_corpse_footprint);
 assert(!old_map->has_corpse_footprint);
 if (!new_map->has_corpse_footprint ||
     old_map->has_corpse_footprint) {




  return KERN_NOT_SUPPORTED;
 }

 if (new_map->vmmap_corpse_footprint == ((void*)0)) {
  vm_offset_t buf;
  vm_size_t buf_size;

  buf = 0;
  buf_size = (sizeof (*footprint_header) +
       (old_map->hdr.nentries
        *
        (sizeof (*footprint_region) +
         + 3))
       +
       ((old_map->size / PAGE_SIZE)
        *
        sizeof (char)));

  buf_size = round_page(buf_size);
  if (buf_size > (8*1024*1024)) {
   buf_size = (8*1024*1024);
  }





  kr = kernel_memory_allocate(kernel_map,
         &buf,
         (buf_size
          + PAGE_SIZE),
         0,
         KMA_PAGEABLE | KMA_GUARD_LAST,
         VM_KERN_MEMORY_DIAG);
  if (kr != KERN_SUCCESS) {
   vm_map_corpse_footprint_no_buf++;
   return kr;
  }


  footprint_header = (struct vm_map_corpse_footprint_header *)buf;
  new_map->vmmap_corpse_footprint = footprint_header;

  footprint_header->cf_size = buf_size;
  footprint_header->cf_last_region =
   sizeof (*footprint_header);
  footprint_header->cf_last_zeroes = 0;

  footprint_region = (struct vm_map_corpse_footprint_region *)
   ((char *)footprint_header +
    footprint_header->cf_last_region);
  footprint_region->cfr_vaddr = 0;
  footprint_region->cfr_num_pages = 0;
 } else {

  footprint_header = (struct vm_map_corpse_footprint_header *)
   new_map->vmmap_corpse_footprint;
  footprint_region = (struct vm_map_corpse_footprint_region *)
   ((char *)footprint_header +
    footprint_header->cf_last_region);
 }
 footprint_edge = ((uintptr_t)footprint_header +
     footprint_header->cf_size);

 if ((footprint_region->cfr_vaddr +
      (((vm_map_offset_t)footprint_region->cfr_num_pages) *
       PAGE_SIZE))
     != old_entry->vme_start) {
  uint64_t num_pages_delta;
  uint32_t region_offset_delta;







  num_pages_delta = (((old_entry->vme_start -
         footprint_region->cfr_vaddr) / PAGE_SIZE)
       - footprint_region->cfr_num_pages);

  region_offset_delta =
   (sizeof (*footprint_region) +
    roundup((footprint_region->cfr_num_pages -
      footprint_header->cf_last_zeroes),
     sizeof (int)) -
    (footprint_region->cfr_num_pages -
     footprint_header->cf_last_zeroes));

  if (region_offset_delta < num_pages_delta ||
      os_add3_overflow(footprint_region->cfr_num_pages,
         (uint32_t) num_pages_delta,
         1,
         &num_pages_tmp)) {
   new_footprint_region =
    vm_map_corpse_footprint_new_region(footprint_header);

   if (new_footprint_region == ((void*)0)) {
    goto over_the_edge;
   }
   footprint_region = new_footprint_region;

   footprint_region->cfr_vaddr = old_entry->vme_start;
   footprint_region->cfr_num_pages = 0;
  } else {





   for (; num_pages_delta > 0; num_pages_delta--) {
    next_disp_p =
     ((unsigned char *) footprint_region +
      sizeof (*footprint_region) +
      footprint_region->cfr_num_pages);

    if ((uintptr_t)next_disp_p >= footprint_edge) {
     goto over_the_edge;
    }

    footprint_region->cfr_num_pages++;
    *next_disp_p = (unsigned char) 0;
    footprint_header->cf_last_zeroes++;
   }
  }
 }

 for (va = old_entry->vme_start;
      va < old_entry->vme_end;
      va += PAGE_SIZE) {
  vm_object_t object;

  object = VME_OBJECT(old_entry);
  if (!old_entry->is_sub_map &&
      old_entry->iokit_acct &&
      object != VM_OBJECT_NULL &&
      object->internal &&
      object->purgable == VM_PURGABLE_DENY) {
   disp = (PMAP_QUERY_PAGE_PRESENT |
    PMAP_QUERY_PAGE_INTERNAL);
  } else {
   disp = 0;
   pmap_query_page_info(old_map->pmap,
          va,
          &disp);
  }



  if (disp == 0 && footprint_region->cfr_num_pages == 0) {




   footprint_region->cfr_vaddr += PAGE_SIZE;
   continue;
  }


  if (os_add_overflow(footprint_region->cfr_num_pages, 1,
        &num_pages_tmp)) {

   new_footprint_region =
    vm_map_corpse_footprint_new_region(
     footprint_header);
   if (new_footprint_region == ((void*)0)) {
    goto over_the_edge;
   }
   footprint_region = new_footprint_region;
   footprint_region->cfr_vaddr = va;
   footprint_region->cfr_num_pages = 0;
  }

  next_disp_p = ((unsigned char *)footprint_region +
          sizeof (*footprint_region) +
          footprint_region->cfr_num_pages);

  if ((uintptr_t)next_disp_p >= footprint_edge) {
   goto over_the_edge;
  }

  *next_disp_p = (unsigned char) disp;
  footprint_region->cfr_num_pages++;

  if (disp != 0) {

   footprint_header->cf_last_zeroes = 0;

   continue;
  }


  footprint_header->cf_last_zeroes++;
  if ((footprint_header->cf_last_zeroes +
       roundup((footprint_region->cfr_num_pages -
         footprint_header->cf_last_zeroes) &
        (sizeof (int) - 1),
        sizeof (int))) <
      (sizeof (*footprint_header))) {







   continue;
  }




  new_footprint_region =
   vm_map_corpse_footprint_new_region(footprint_header);
  if (new_footprint_region == ((void*)0)) {
   goto over_the_edge;
  }
  footprint_region = new_footprint_region;

  footprint_region->cfr_num_pages = 0;

  footprint_region->cfr_vaddr = va + PAGE_SIZE;
 }

 return KERN_SUCCESS;

over_the_edge:

 vm_map_corpse_footprint_full++;
 return KERN_RESOURCE_SHORTAGE;
}
