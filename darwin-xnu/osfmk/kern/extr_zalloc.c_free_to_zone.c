
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* zone_t ;
typedef int vm_offset_t ;
struct zone_page_metadata {int free_count; int pages; scalar_t__ page_count; } ;
struct zone_free_element {int dummy; } ;
typedef scalar_t__ boolean_t ;
struct TYPE_6__ {int intermediate; int all_free; int any_free_foreign; } ;
struct TYPE_7__ {int elem_size; int countfree; int count; TYPE_1__ pages; int count_all_free_pages; scalar_t__ allows_foreign; int zone_name; } ;


 int ASAN_HEAP_FREED ;
 int FALSE ;
 TYPE_2__* PAGE_METADATA_GET_ZONE (struct zone_page_metadata*) ;
 scalar_t__ __improbable (int) ;
 int assert (int) ;
 int from_zone_map (int,int ) ;
 int* get_backup_ptr (int ,int*) ;
 int get_metadata_alloc_count (struct zone_page_metadata*) ;
 struct zone_page_metadata* get_zone_page_metadata (struct zone_free_element*,int ) ;
 int is_sane_zone_element (TYPE_2__*,int) ;
 int kasan_poison_range (int,int ,int ) ;
 scalar_t__ page_metadata_get_freelist (struct zone_page_metadata*) ;
 int page_metadata_set_freelist (struct zone_page_metadata*,struct zone_free_element*) ;
 int panic (char*,void*,int ) ;
 int re_queue_tail (int *,int *) ;
 int zp_nopoison_cookie ;
 int zp_poisoned_cookie ;

__attribute__((used)) static inline void
free_to_zone(zone_t zone,
             vm_offset_t element,
             boolean_t poison)
{
 vm_offset_t old_head;
 struct zone_page_metadata *page_meta;

 vm_offset_t *primary = (vm_offset_t *) element;
 vm_offset_t *backup = get_backup_ptr(zone->elem_size, primary);

 page_meta = get_zone_page_metadata((struct zone_free_element *)element, FALSE);
 assert(PAGE_METADATA_GET_ZONE(page_meta) == zone);
 old_head = (vm_offset_t)page_metadata_get_freelist(page_meta);

 if (__improbable(!is_sane_zone_element(zone, old_head)))
  panic("zfree: invalid head pointer %p for freelist of zone %s\n",
        (void *) old_head, zone->zone_name);

 if (__improbable(!is_sane_zone_element(zone, element)))
  panic("zfree: freeing invalid pointer %p to zone %s\n",
        (void *) element, zone->zone_name);

 if (__improbable(old_head == element))
  panic("zfree: double free of %p to zone %s\n",
        (void *) element, zone->zone_name);







 *backup = old_head ^ (poison ? zp_poisoned_cookie : zp_nopoison_cookie);






 *primary = old_head ^ zp_nopoison_cookie;
 page_metadata_set_freelist(page_meta, (struct zone_free_element *)element);
 page_meta->free_count++;
 if (zone->allows_foreign && !from_zone_map(element, zone->elem_size)) {
  if (page_meta->free_count == 1) {

   re_queue_tail(&zone->pages.any_free_foreign, &(page_meta->pages));
  } else {

  }
 } else if (page_meta->free_count == get_metadata_alloc_count(page_meta)) {

  re_queue_tail(&zone->pages.all_free, &(page_meta->pages));
  zone->count_all_free_pages += page_meta->page_count;
 } else if (page_meta->free_count == 1) {

  re_queue_tail(&zone->pages.intermediate, &(page_meta->pages));
 }
 zone->count--;
 zone->countfree++;




}
