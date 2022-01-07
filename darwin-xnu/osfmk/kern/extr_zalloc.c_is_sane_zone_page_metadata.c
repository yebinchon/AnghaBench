
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zone_t ;
typedef scalar_t__ vm_offset_t ;
struct zone_page_metadata {int dummy; } ;
typedef int boolean_t ;


 int FALSE ;
 int is_sane_zone_ptr (int ,scalar_t__,int) ;

__attribute__((used)) static inline boolean_t
is_sane_zone_page_metadata(zone_t zone,
      vm_offset_t page_meta)
{

 if (page_meta == 0)
  return FALSE;
 return is_sane_zone_ptr(zone, page_meta, sizeof(struct zone_page_metadata));
}
