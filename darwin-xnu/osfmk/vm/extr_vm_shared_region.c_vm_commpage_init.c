
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
struct TYPE_8__ {int map; } ;
struct TYPE_12__ {TYPE_1__ backing; } ;
struct TYPE_9__ {int map; } ;
struct TYPE_11__ {TYPE_2__ backing; } ;
struct TYPE_10__ {scalar_t__ ip_kobject; } ;


 int SHARED_REGION_TRACE_DEBUG (char*) ;
 int _COMM_PAGE32_AREA_LENGTH ;
 int _COMM_PAGE64_AREA_LENGTH ;
 int __commpage_setup ;
 scalar_t__ __system_power_source ;
 int _vm_commpage_init (TYPE_3__**,int ) ;
 TYPE_6__* commpage32_entry ;
 TYPE_3__* commpage32_handle ;
 int commpage32_map ;
 TYPE_4__* commpage64_entry ;
 TYPE_3__* commpage64_handle ;
 int commpage64_map ;
 int commpage_populate () ;
 int post_sys_powersource_internal (int ,int) ;

void
vm_commpage_init(void)
{
 SHARED_REGION_TRACE_DEBUG(
  ("commpage: -> init()\n"));



 _vm_commpage_init(&commpage32_handle, _COMM_PAGE32_AREA_LENGTH);
 commpage32_entry = (vm_named_entry_t) commpage32_handle->ip_kobject;
 commpage32_map = commpage32_entry->backing.map;



 _vm_commpage_init(&commpage64_handle, _COMM_PAGE64_AREA_LENGTH);
 commpage64_entry = (vm_named_entry_t) commpage64_handle->ip_kobject;
 commpage64_map = commpage64_entry->backing.map;




 commpage_populate();
 __commpage_setup = 1;

 if (__system_power_source == 0) {
  post_sys_powersource_internal(0, 1);
 }


 SHARED_REGION_TRACE_DEBUG(
  ("commpage: init() <-\n"));
}
