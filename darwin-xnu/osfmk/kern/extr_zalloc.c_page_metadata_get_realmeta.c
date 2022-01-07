
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
struct zone_page_metadata {scalar_t__ real_metadata_offset; } ;


 scalar_t__ MULTIPAGE_METADATA_MAGIC ;
 scalar_t__ PAGE_METADATA_GET_ZINDEX (struct zone_page_metadata*) ;
 int assert (int) ;

__attribute__((used)) static inline struct zone_page_metadata *
page_metadata_get_realmeta(struct zone_page_metadata *page_meta)
{
 assert(PAGE_METADATA_GET_ZINDEX(page_meta) == MULTIPAGE_METADATA_MAGIC);
 return (struct zone_page_metadata *)((vm_offset_t)page_meta - page_meta->real_metadata_offset);
}
