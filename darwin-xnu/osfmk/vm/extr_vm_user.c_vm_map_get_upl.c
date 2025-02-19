
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_tag_t ;
typedef scalar_t__ vm_map_t ;
typedef int vm_map_offset_t ;
typedef int upl_t ;
typedef int upl_size_t ;
typedef int upl_page_info_array_t ;
typedef int upl_control_flags_t ;
typedef int kern_return_t ;


 int KERN_INVALID_ARGUMENT ;
 int UPL_FORCE_DATA_SYNC ;
 int UPL_NOZEROFILL ;
 scalar_t__ VM_MAP_NULL ;
 int vm_map_create_upl (scalar_t__,int ,int *,int *,int ,unsigned int*,int*,int ) ;

kern_return_t
vm_map_get_upl(
 vm_map_t map,
 vm_map_offset_t map_offset,
 upl_size_t *upl_size,
 upl_t *upl,
 upl_page_info_array_t page_list,
 unsigned int *count,
 upl_control_flags_t *flags,
 vm_tag_t tag,
 int force_data_sync)
{
 upl_control_flags_t map_flags;
 kern_return_t kr;

 if (VM_MAP_NULL == map)
  return KERN_INVALID_ARGUMENT;

 map_flags = *flags & ~UPL_NOZEROFILL;
 if (force_data_sync)
  map_flags |= UPL_FORCE_DATA_SYNC;

 kr = vm_map_create_upl(map,
          map_offset,
          upl_size,
          upl,
          page_list,
          count,
          &map_flags,
          tag);

 *flags = (map_flags & ~UPL_FORCE_DATA_SYNC);
 return kr;
}
