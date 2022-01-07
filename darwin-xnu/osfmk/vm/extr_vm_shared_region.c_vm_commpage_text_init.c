
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef void* vm_named_entry_t ;
typedef scalar_t__ user64_addr_t ;
typedef scalar_t__ user32_addr_t ;
struct TYPE_8__ {int map; } ;
struct TYPE_12__ {TYPE_1__ backing; } ;
struct TYPE_9__ {int map; } ;
struct TYPE_11__ {TYPE_2__ backing; } ;
struct TYPE_10__ {scalar_t__ ip_kobject; } ;


 unsigned int PAGE_SHIFT ;
 int SHARED_REGION_TRACE_DEBUG (char*) ;
 scalar_t__ _COMM_PAGE32_TEXT_START ;
 scalar_t__ _COMM_PAGE64_TEXT_START ;
 int _COMM_PAGE_TEXT_AREA_LENGTH ;
 unsigned int _PFZ32_SLIDE_RANGE ;
 unsigned int _PFZ64_SLIDE_RANGE ;
 int _vm_commpage_init (TYPE_3__**,int ) ;
 TYPE_6__* commpage_text32_entry ;
 TYPE_3__* commpage_text32_handle ;
 scalar_t__ commpage_text32_location ;
 int commpage_text32_map ;
 TYPE_4__* commpage_text64_entry ;
 TYPE_3__* commpage_text64_handle ;
 scalar_t__ commpage_text64_location ;
 int commpage_text64_map ;
 int commpage_text_populate () ;
 unsigned int random () ;

void
vm_commpage_text_init(void)
{
 SHARED_REGION_TRACE_DEBUG(
  ("commpage text: ->init()\n"));


 unsigned int offset = (random() % _PFZ32_SLIDE_RANGE) << PAGE_SHIFT;
 _vm_commpage_init(&commpage_text32_handle, _COMM_PAGE_TEXT_AREA_LENGTH);
 commpage_text32_entry = (vm_named_entry_t) commpage_text32_handle->ip_kobject;
 commpage_text32_map = commpage_text32_entry->backing.map;
 commpage_text32_location = (user32_addr_t) (_COMM_PAGE32_TEXT_START + offset);


 offset = (random() % _PFZ64_SLIDE_RANGE) << PAGE_SHIFT;
        _vm_commpage_init(&commpage_text64_handle, _COMM_PAGE_TEXT_AREA_LENGTH);
        commpage_text64_entry = (vm_named_entry_t) commpage_text64_handle->ip_kobject;
        commpage_text64_map = commpage_text64_entry->backing.map;
 commpage_text64_location = (user64_addr_t) (_COMM_PAGE64_TEXT_START + offset);

 commpage_text_populate();





 SHARED_REGION_TRACE_DEBUG(
                ("commpage text: init() <-\n"));

}
