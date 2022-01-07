
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct kcdata_item {int dummy; } ;
typedef int mach_vm_address_t ;
typedef int kern_return_t ;
typedef TYPE_1__* kcdata_descriptor_t ;
struct TYPE_4__ {int kcd_flags; int kcd_addr_end; } ;


 int KCFLAG_NO_AUTO_ENDBUFFER ;
 int KERN_SUCCESS ;
 int kcdata_write_buffer_end (TYPE_1__*) ;

kern_return_t
kcdata_undo_add_container_begin(kcdata_descriptor_t data)
{




 const mach_vm_address_t padded_payload_size = 16;
 data->kcd_addr_end -= sizeof(struct kcdata_item) + padded_payload_size;

 if (!(data->kcd_flags & KCFLAG_NO_AUTO_ENDBUFFER)) {

  return kcdata_write_buffer_end(data);
 } else {
  return KERN_SUCCESS;
 }
}
