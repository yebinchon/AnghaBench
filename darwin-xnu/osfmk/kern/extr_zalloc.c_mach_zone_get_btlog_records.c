
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* zone_t ;
typedef int zone_btrecord_t ;
typedef int * zone_btrecord_array_t ;
typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_offset_t ;
struct TYPE_8__ {int mzn_name; } ;
typedef TYPE_2__ mach_zone_name_t ;
typedef unsigned int mach_msg_type_number_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ host_priv_t ;
struct TYPE_7__ {int zlog_btlog; int zone_name; } ;


 int DO_LOGGING (TYPE_1__*) ;
 int FALSE ;
 scalar_t__ HOST_NULL ;
 scalar_t__ KERN_FAILURE ;
 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_INVALID_HOST ;
 scalar_t__ KERN_SUCCESS ;
 int VM_KERN_MEMORY_IPC ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 TYPE_1__* ZONE_NULL ;
 int all_zones_lock ;
 int assert (int) ;
 scalar_t__ create_vm_map_copy (scalar_t__,scalar_t__,unsigned int) ;
 int get_btlog_records (int ,int *,unsigned int*) ;
 scalar_t__ get_btlog_records_count (int ) ;
 int ipc_kernel_map ;
 scalar_t__ kmem_alloc_pageable (int ,scalar_t__*,scalar_t__,int ) ;
 scalar_t__ num_zones ;
 scalar_t__ round_page (unsigned int) ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;
 scalar_t__ track_this_zone (int ,int ) ;
 scalar_t__ vm_map_unwire (int ,scalar_t__,scalar_t__,int ) ;
 scalar_t__ vm_map_wire_kernel (int ,scalar_t__,scalar_t__,int,int ,int ) ;
 TYPE_1__* zone_array ;

kern_return_t
mach_zone_get_btlog_records(
 host_priv_t host,
 mach_zone_name_t name,
 zone_btrecord_array_t *recsp,
 mach_msg_type_number_t *recsCntp)
{
#pragma unused(host, name, recsp, recsCntp)
 return KERN_FAILURE;

}
