
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct zone_page_metadata {int dummy; } ;


 int PAGE_FOR_PAGE_INDEX (int ) ;
 int PAGE_INDEX_FOR_METADATA (struct zone_page_metadata*) ;
 scalar_t__ from_zone_map (struct zone_page_metadata*,int) ;
 int trunc_page (struct zone_page_metadata*) ;

__attribute__((used)) static inline vm_offset_t
get_zone_page(struct zone_page_metadata *page_meta)
{
 if (from_zone_map(page_meta, sizeof(struct zone_page_metadata)))
  return (vm_offset_t)(PAGE_FOR_PAGE_INDEX(PAGE_INDEX_FOR_METADATA(page_meta)));
 else
  return (vm_offset_t)(trunc_page(page_meta));
}
