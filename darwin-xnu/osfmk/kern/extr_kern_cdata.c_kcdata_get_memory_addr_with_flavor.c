
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct kcdata_item {int flags; scalar_t__ size; scalar_t__ type; } ;
typedef scalar_t__ mach_vm_address_t ;
typedef scalar_t__ kern_return_t ;
typedef TYPE_1__* kcdata_descriptor_t ;
typedef int info ;
struct TYPE_6__ {scalar_t__ kcd_length; scalar_t__ kcd_addr_end; scalar_t__ kcd_addr_begin; int kcd_flags; } ;


 int KCFLAG_NO_AUTO_ENDBUFFER ;
 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_RESOURCE_SHORTAGE ;
 scalar_t__ KERN_SUCCESS ;
 int bzero (struct kcdata_item*,int) ;
 scalar_t__ kcdata_bzero (TYPE_1__*,scalar_t__,scalar_t__) ;
 scalar_t__ kcdata_calc_padding (scalar_t__) ;
 scalar_t__ kcdata_memcpy (TYPE_1__*,scalar_t__,struct kcdata_item*,int) ;
 scalar_t__ kcdata_write_buffer_end (TYPE_1__*) ;

__attribute__((used)) static kern_return_t kcdata_get_memory_addr_with_flavor(
  kcdata_descriptor_t data,
  uint32_t type,
  uint32_t size,
  uint64_t flags,
  mach_vm_address_t *user_addr)
{
 kern_return_t kr;
 struct kcdata_item info;

 uint32_t orig_size = size;

 uint32_t padding = kcdata_calc_padding(size);
 size += padding;
 uint32_t total_size = size + sizeof(info);

 if (user_addr == ((void*)0) || data == ((void*)0) || total_size + sizeof(info) < orig_size) {
  return KERN_INVALID_ARGUMENT;
 }

 bzero(&info, sizeof(info));
 info.type = type;
 info.size = size;
 info.flags = flags;


 if (total_size + sizeof(info) > data->kcd_length ||
  data->kcd_length - (total_size + sizeof(info)) < data->kcd_addr_end - data->kcd_addr_begin) {
  return KERN_RESOURCE_SHORTAGE;
 }

 kr = kcdata_memcpy(data, data->kcd_addr_end, &info, sizeof(info));
 if (kr)
  return kr;

 data->kcd_addr_end += sizeof(info);

 if (padding) {
  kr = kcdata_bzero(data, data->kcd_addr_end + size - padding, padding);
  if (kr)
   return kr;
 }

 *user_addr = data->kcd_addr_end;
 data->kcd_addr_end += size;

 if (!(data->kcd_flags & KCFLAG_NO_AUTO_ENDBUFFER)) {

  return kcdata_write_buffer_end(data);
 } else {
  return KERN_SUCCESS;
 }
}
