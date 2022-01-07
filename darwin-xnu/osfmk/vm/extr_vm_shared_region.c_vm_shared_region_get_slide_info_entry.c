
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* vm_shared_region_t ;
struct TYPE_4__ {scalar_t__ slide_info_entry; } ;
struct TYPE_5__ {TYPE_1__ sr_slide_info; } ;



void*
vm_shared_region_get_slide_info_entry(vm_shared_region_t sr) {
 return (void*)sr->sr_slide_info.slide_info_entry;
}
