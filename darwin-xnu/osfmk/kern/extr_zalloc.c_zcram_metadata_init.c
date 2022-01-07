
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_offset_t ;
struct zone_page_metadata {scalar_t__ free_count; } ;
struct zone_free_element {int dummy; } ;


 int MULTIPAGE_METADATA_MAGIC ;
 int PAGE_METADATA_SET_ZINDEX (struct zone_page_metadata*,int ) ;
 scalar_t__ PAGE_SIZE ;
 int TRUE ;
 int assert (int) ;
 struct zone_page_metadata* get_zone_page_metadata (struct zone_free_element*,int ) ;
 int page_metadata_set_realmeta (struct zone_page_metadata*,struct zone_page_metadata*) ;

__attribute__((used)) static inline void
zcram_metadata_init(vm_offset_t newmem, vm_size_t size, struct zone_page_metadata *chunk_metadata)
{
 struct zone_page_metadata *page_metadata;


 size -= PAGE_SIZE;
 newmem += PAGE_SIZE;

 for (; size > 0; newmem += PAGE_SIZE, size -= PAGE_SIZE) {
  page_metadata = get_zone_page_metadata((struct zone_free_element *)newmem, TRUE);
  assert(page_metadata != chunk_metadata);
  PAGE_METADATA_SET_ZINDEX(page_metadata, MULTIPAGE_METADATA_MAGIC);
  page_metadata_set_realmeta(page_metadata, chunk_metadata);
  page_metadata->free_count = 0;
 }
 return;
}
