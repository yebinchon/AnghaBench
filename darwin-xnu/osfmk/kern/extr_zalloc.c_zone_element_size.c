
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct zone* zone_t ;
typedef int vm_size_t ;
struct zone_page_metadata {int dummy; } ;
struct zone_free_element {int dummy; } ;
struct zone {int elem_size; } ;


 int FALSE ;
 struct zone* PAGE_METADATA_GET_ZONE (struct zone_page_metadata*) ;
 scalar_t__ from_zone_map (void*,int) ;
 struct zone_page_metadata* get_zone_page_metadata (struct zone_free_element*,int ) ;
 scalar_t__ gzalloc_element_size (void*,struct zone**,int *) ;

vm_size_t
zone_element_size(void *addr, zone_t *z)
{
 struct zone *src_zone;
 if (from_zone_map(addr, sizeof(void *))) {
  struct zone_page_metadata *page_meta = get_zone_page_metadata((struct zone_free_element *)addr, FALSE);
  src_zone = PAGE_METADATA_GET_ZONE(page_meta);
  if (z) {
   *z = src_zone;
  }
  return (src_zone->elem_size);
 } else {







  return 0;
 }
}
