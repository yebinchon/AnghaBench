
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct kcdata_descriptor {scalar_t__ kcd_addr_begin; } ;
typedef TYPE_1__* os_reason_t ;
typedef scalar_t__ mach_vm_address_t ;
struct TYPE_4__ {struct kcdata_descriptor osr_kcd_descriptor; int * osr_kcd_buf; } ;


 TYPE_1__* OS_REASON_NULL ;
 int assert (int) ;

struct kcdata_descriptor *
os_reason_get_kcdata_descriptor(os_reason_t cur_reason)
{
 if (cur_reason == OS_REASON_NULL) {
  return ((void*)0);
 }

 if (cur_reason->osr_kcd_buf == ((void*)0)) {
  return ((void*)0);
 }

 assert(cur_reason->osr_kcd_descriptor.kcd_addr_begin == (mach_vm_address_t) cur_reason->osr_kcd_buf);
 if (cur_reason->osr_kcd_descriptor.kcd_addr_begin != (mach_vm_address_t) cur_reason->osr_kcd_buf) {
  return ((void*)0);
 }

 return &cur_reason->osr_kcd_descriptor;
}
