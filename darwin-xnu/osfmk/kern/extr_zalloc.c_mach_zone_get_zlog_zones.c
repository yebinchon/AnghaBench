
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* zone_t ;
typedef int vm_size_t ;
typedef scalar_t__ vm_offset_t ;
typedef int mach_zone_name_t ;
typedef int * mach_zone_name_array_t ;
typedef unsigned int mach_msg_type_number_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ host_priv_t ;
struct TYPE_5__ {scalar_t__ zlog_btlog; } ;


 scalar_t__ HOST_NULL ;
 scalar_t__ KERN_FAILURE ;
 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_INVALID_HOST ;
 scalar_t__ KERN_SUCCESS ;
 int VM_KERN_MEMORY_IPC ;
 TYPE_1__* ZONE_NULL ;
 int all_zones_lock ;
 int assert (int) ;
 scalar_t__ create_vm_map_copy (scalar_t__,int ,unsigned int) ;
 int get_zone_info (TYPE_1__*,int *,int *) ;
 int ipc_kernel_map ;
 scalar_t__ kmem_alloc_pageable (int ,scalar_t__*,int ,int ) ;
 scalar_t__ num_zones ;
 int round_page (unsigned int) ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;
 TYPE_1__* zone_array ;

kern_return_t
mach_zone_get_zlog_zones(
 host_priv_t host,
 mach_zone_name_array_t *namesp,
 mach_msg_type_number_t *namesCntp)
{
#pragma unused(host, namesp, namesCntp)
 return KERN_FAILURE;

}
