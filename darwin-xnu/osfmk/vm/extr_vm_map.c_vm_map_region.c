
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef TYPE_1__* vm_region_top_info_t ;
typedef int vm_region_info_t ;
typedef int vm_region_flavor_t ;
typedef TYPE_2__* vm_region_extended_info_t ;
typedef TYPE_3__* vm_region_basic_info_t ;
typedef TYPE_4__* vm_region_basic_info_64_t ;
typedef scalar_t__ vm_map_t ;
typedef scalar_t__ vm_map_size_t ;
typedef scalar_t__ vm_map_offset_t ;
typedef TYPE_5__* vm_map_entry_t ;
typedef int uint32_t ;
typedef int mach_port_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;
struct TYPE_18__ {scalar_t__ vme_end; scalar_t__ vme_start; struct TYPE_18__* vme_next; int protection; void* is_shared; int is_sub_map; int user_wired_count; int behavior; int max_protection; int inheritance; } ;
struct TYPE_17__ {void* shared; int reserved; int user_wired_count; int behavior; int max_protection; int inheritance; int protection; int offset; } ;
struct TYPE_16__ {void* shared; int reserved; int user_wired_count; int behavior; int max_protection; int inheritance; int protection; int offset; } ;
struct TYPE_15__ {int ref_count; int share_mode; int external_pager; int pages_reusable; int shadow_depth; int pages_dirtied; int pages_shared_now_private; int pages_swapped_out; int pages_resident; int user_tag; int protection; } ;
struct TYPE_14__ {int shared_pages_resident; int private_pages_resident; } ;


 void* FALSE ;
 int IP_NULL ;
 int KERN_INVALID_ADDRESS ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int SM_PRIVATE ;
 int SM_SHARED ;
 int TRUE ;
 int VME_ALIAS (TYPE_5__*) ;
 int VME_OFFSET (TYPE_5__*) ;
 scalar_t__ VM_MAP_NULL ;


 int VM_REGION_BASIC_INFO_COUNT ;
 int VM_REGION_BASIC_INFO_COUNT_64 ;

 int VM_REGION_EXTENDED_INFO_COUNT ;
 int VM_REGION_EXTENDED_INFO_COUNT__legacy ;


 int VM_REGION_TOP_INFO_COUNT ;
 int vm_map_lock_read (scalar_t__) ;
 int vm_map_lookup_entry (scalar_t__,scalar_t__,TYPE_5__**) ;
 int vm_map_region_top_walk (TYPE_5__*,TYPE_1__*) ;
 int vm_map_region_walk (scalar_t__,scalar_t__,TYPE_5__*,int ,scalar_t__,TYPE_2__*,int ,int ) ;
 TYPE_5__* vm_map_to_entry (scalar_t__) ;
 int vm_map_unlock_read (scalar_t__) ;

kern_return_t
vm_map_region(
 vm_map_t map,
 vm_map_offset_t *address,
 vm_map_size_t *size,
 vm_region_flavor_t flavor,
 vm_region_info_t info,
 mach_msg_type_number_t *count,
 mach_port_t *object_name)
{
 vm_map_entry_t tmp_entry;
 vm_map_entry_t entry;
 vm_map_offset_t start;

 if (map == VM_MAP_NULL)
  return(KERN_INVALID_ARGUMENT);

 switch (flavor) {

 case 132:

 {
  vm_region_basic_info_t basic;

  if (*count < VM_REGION_BASIC_INFO_COUNT)
   return(KERN_INVALID_ARGUMENT);

  basic = (vm_region_basic_info_t) info;
  *count = VM_REGION_BASIC_INFO_COUNT;

  vm_map_lock_read(map);

  start = *address;
  if (!vm_map_lookup_entry(map, start, &tmp_entry)) {
   if ((entry = tmp_entry->vme_next) == vm_map_to_entry(map)) {
    vm_map_unlock_read(map);
    return(KERN_INVALID_ADDRESS);
   }
  } else {
   entry = tmp_entry;
  }

  start = entry->vme_start;

  basic->offset = (uint32_t)VME_OFFSET(entry);
  basic->protection = entry->protection;
  basic->inheritance = entry->inheritance;
  basic->max_protection = entry->max_protection;
  basic->behavior = entry->behavior;
  basic->user_wired_count = entry->user_wired_count;
  basic->reserved = entry->is_sub_map;
  *address = start;
  *size = (entry->vme_end - start);

  if (object_name) *object_name = IP_NULL;
  if (entry->is_sub_map) {
   basic->shared = FALSE;
  } else {
   basic->shared = entry->is_shared;
  }

  vm_map_unlock_read(map);
  return(KERN_SUCCESS);
 }

 case 131:
 {
  vm_region_basic_info_64_t basic;

  if (*count < VM_REGION_BASIC_INFO_COUNT_64)
   return(KERN_INVALID_ARGUMENT);

  basic = (vm_region_basic_info_64_t) info;
  *count = VM_REGION_BASIC_INFO_COUNT_64;

  vm_map_lock_read(map);

  start = *address;
  if (!vm_map_lookup_entry(map, start, &tmp_entry)) {
   if ((entry = tmp_entry->vme_next) == vm_map_to_entry(map)) {
    vm_map_unlock_read(map);
    return(KERN_INVALID_ADDRESS);
   }
  } else {
   entry = tmp_entry;
  }

  start = entry->vme_start;

  basic->offset = VME_OFFSET(entry);
  basic->protection = entry->protection;
  basic->inheritance = entry->inheritance;
  basic->max_protection = entry->max_protection;
  basic->behavior = entry->behavior;
  basic->user_wired_count = entry->user_wired_count;
  basic->reserved = entry->is_sub_map;
  *address = start;
  *size = (entry->vme_end - start);

  if (object_name) *object_name = IP_NULL;
  if (entry->is_sub_map) {
   basic->shared = FALSE;
  } else {
   basic->shared = entry->is_shared;
  }

  vm_map_unlock_read(map);
  return(KERN_SUCCESS);
 }
 case 130:
  if (*count < VM_REGION_EXTENDED_INFO_COUNT)
   return(KERN_INVALID_ARGUMENT);

 case 129:
  if (*count < VM_REGION_EXTENDED_INFO_COUNT__legacy)
   return KERN_INVALID_ARGUMENT;

 {
  vm_region_extended_info_t extended;
  mach_msg_type_number_t original_count;

  extended = (vm_region_extended_info_t) info;

  vm_map_lock_read(map);

  start = *address;
  if (!vm_map_lookup_entry(map, start, &tmp_entry)) {
   if ((entry = tmp_entry->vme_next) == vm_map_to_entry(map)) {
    vm_map_unlock_read(map);
    return(KERN_INVALID_ADDRESS);
   }
  } else {
   entry = tmp_entry;
  }
  start = entry->vme_start;

  extended->protection = entry->protection;
  extended->user_tag = VME_ALIAS(entry);
  extended->pages_resident = 0;
  extended->pages_swapped_out = 0;
  extended->pages_shared_now_private = 0;
  extended->pages_dirtied = 0;
  extended->external_pager = 0;
  extended->shadow_depth = 0;

  original_count = *count;
  if (flavor == 129) {
   *count = VM_REGION_EXTENDED_INFO_COUNT__legacy;
  } else {
   extended->pages_reusable = 0;
   *count = VM_REGION_EXTENDED_INFO_COUNT;
  }

  vm_map_region_walk(map, start, entry, VME_OFFSET(entry), entry->vme_end - start, extended, TRUE, *count);

  if (extended->external_pager && extended->ref_count == 2 && extended->share_mode == SM_SHARED)
   extended->share_mode = SM_PRIVATE;

  if (object_name)
   *object_name = IP_NULL;
  *address = start;
  *size = (entry->vme_end - start);

  vm_map_unlock_read(map);
  return(KERN_SUCCESS);
 }
 case 128:
 {
  vm_region_top_info_t top;

  if (*count < VM_REGION_TOP_INFO_COUNT)
   return(KERN_INVALID_ARGUMENT);

  top = (vm_region_top_info_t) info;
  *count = VM_REGION_TOP_INFO_COUNT;

  vm_map_lock_read(map);

  start = *address;
  if (!vm_map_lookup_entry(map, start, &tmp_entry)) {
   if ((entry = tmp_entry->vme_next) == vm_map_to_entry(map)) {
    vm_map_unlock_read(map);
    return(KERN_INVALID_ADDRESS);
   }
  } else {
   entry = tmp_entry;

  }
  start = entry->vme_start;

  top->private_pages_resident = 0;
  top->shared_pages_resident = 0;

  vm_map_region_top_walk(entry, top);

  if (object_name)
   *object_name = IP_NULL;
  *address = start;
  *size = (entry->vme_end - start);

  vm_map_unlock_read(map);
  return(KERN_SUCCESS);
 }
 default:
  return(KERN_INVALID_ARGUMENT);
 }
}
