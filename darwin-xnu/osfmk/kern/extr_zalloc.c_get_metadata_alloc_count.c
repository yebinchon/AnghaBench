
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct zone_page_metadata {int page_count; } ;
struct zone {int elem_size; } ;


 scalar_t__ MULTIPAGE_METADATA_MAGIC ;
 scalar_t__ PAGE_METADATA_GET_ZINDEX (struct zone_page_metadata*) ;
 struct zone* PAGE_METADATA_GET_ZONE (struct zone_page_metadata*) ;
 int PAGE_SIZE ;
 int assert (int) ;

__attribute__((used)) static inline uint16_t
get_metadata_alloc_count(struct zone_page_metadata *page_meta)
{
  assert(PAGE_METADATA_GET_ZINDEX(page_meta) != MULTIPAGE_METADATA_MAGIC);
  struct zone *z = PAGE_METADATA_GET_ZONE(page_meta);
  return ((page_meta->page_count * PAGE_SIZE) / z->elem_size);
}
