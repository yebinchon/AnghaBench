
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* zone_t ;
typedef int vm_offset_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_5__ {scalar_t__ elem_size; } ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 scalar_t__ is_sane_zone_element (TYPE_1__*,int) ;
 int zone_element_was_modified_panic (TYPE_1__*,int,int,int,scalar_t__) ;
 int zp_nopoison_cookie ;
 int zp_poisoned_cookie ;

__attribute__((used)) static void
backup_ptr_mismatch_panic(zone_t zone,
                          vm_offset_t element,
                          vm_offset_t primary,
                          vm_offset_t backup)
{
 vm_offset_t likely_backup;
 vm_offset_t likely_primary;

 likely_primary = primary ^ zp_nopoison_cookie;
 boolean_t sane_backup;
 boolean_t sane_primary = is_sane_zone_element(zone, likely_primary);
 boolean_t element_was_poisoned = (backup & 0x1) ? TRUE : FALSE;



 if ((backup & 0xFFFFFF0000000000) == 0xFACADE0000000000)
  element_was_poisoned = TRUE;
 else if ((backup & 0xFFFFFF0000000000) == 0xC0FFEE0000000000)
  element_was_poisoned = FALSE;


 if (element_was_poisoned) {
  likely_backup = backup ^ zp_poisoned_cookie;
  sane_backup = is_sane_zone_element(zone, likely_backup);
 } else {
  likely_backup = backup ^ zp_nopoison_cookie;
  sane_backup = is_sane_zone_element(zone, likely_backup);
 }


 if (!sane_primary && sane_backup)
  zone_element_was_modified_panic(zone, element, primary, (likely_backup ^ zp_nopoison_cookie), 0);


 if (sane_primary && !sane_backup)
  zone_element_was_modified_panic(zone, element, backup,
                                  (likely_primary ^ (element_was_poisoned ? zp_poisoned_cookie : zp_nopoison_cookie)),
                                  zone->elem_size - sizeof(vm_offset_t));







 if (sane_primary && sane_backup)
  zone_element_was_modified_panic(zone, element, primary, (likely_backup ^ zp_nopoison_cookie), 0);


 zone_element_was_modified_panic(zone, element, primary, (likely_backup ^ zp_nopoison_cookie), 0);
}
