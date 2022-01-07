
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int mach_port_t ;
typedef scalar_t__ mach_msg_type_number_t ;
struct TYPE_12__ {int disposition; int name; } ;
typedef TYPE_3__ mach_msg_port_descriptor_t ;
struct TYPE_13__ {scalar_t__ count; scalar_t__ address; int deallocate; int disposition; } ;
typedef TYPE_4__ mach_msg_ool_ports_descriptor_t ;
struct TYPE_14__ {int size; int address; int deallocate; } ;
typedef TYPE_5__ mach_msg_ool_descriptor_t ;
struct TYPE_15__ {int msgh_bits; int msgh_voucher_port; int msgh_remote_port; } ;
typedef TYPE_6__ mach_msg_header_t ;
struct TYPE_11__ {int type; } ;
struct TYPE_16__ {TYPE_4__ ool_ports; TYPE_5__ out_of_line; TYPE_3__ port; TYPE_2__ type; } ;
typedef TYPE_7__ mach_msg_descriptor_t ;
typedef int mach_msg_bits_t ;
struct TYPE_10__ {scalar_t__ msgh_descriptor_count; } ;
struct TYPE_17__ {TYPE_1__ body; } ;
typedef TYPE_8__ mach_msg_base_t ;


 int MACH_MSGH_BITS_COMPLEX ;
 int MACH_MSGH_BITS_REMOTE (int) ;
 int MACH_MSGH_BITS_VOUCHER (int) ;




 int mach_msg_destroy_memory (int ,int) ;
 int mach_msg_destroy_port (int ,int ) ;

void
mach_msg_destroy(mach_msg_header_t *msg)
{
    mach_msg_bits_t mbits = msg->msgh_bits;






    mach_msg_destroy_port(msg->msgh_remote_port, MACH_MSGH_BITS_REMOTE(mbits));
    mach_msg_destroy_port(msg->msgh_voucher_port, MACH_MSGH_BITS_VOUCHER(mbits));

    if (mbits & MACH_MSGH_BITS_COMPLEX) {
 mach_msg_base_t *base;
 mach_msg_type_number_t count, i;
 mach_msg_descriptor_t *daddr;

     base = (mach_msg_base_t *) msg;
 count = base->body.msgh_descriptor_count;

     daddr = (mach_msg_descriptor_t *) (base + 1);
 for (i = 0; i < count; i++) {

     switch (daddr->type.type) {

     case 128: {
      mach_msg_port_descriptor_t *dsc;




      dsc = &daddr->port;
      mach_msg_destroy_port(dsc->name, dsc->disposition);
      daddr = (mach_msg_descriptor_t *)(dsc + 1);
      break;
     }

     case 131: {
      mach_msg_ool_descriptor_t *dsc;




      dsc = &daddr->out_of_line;
      if (dsc->deallocate) {
          mach_msg_destroy_memory((vm_offset_t)dsc->address,
      dsc->size);
      }
      daddr = (mach_msg_descriptor_t *)(dsc + 1);
      break;
     }

     case 129: {
      mach_msg_ool_descriptor_t *dsc;




      dsc = &daddr->out_of_line;
      daddr = (mach_msg_descriptor_t *)(dsc + 1);
      break;
     }

     case 130: {
      mach_port_t *ports;
      mach_msg_ool_ports_descriptor_t *dsc;
      mach_msg_type_number_t j;




      dsc = &daddr->ool_ports;
      ports = (mach_port_t *) dsc->address;
      for (j = 0; j < dsc->count; j++, ports++) {
          mach_msg_destroy_port(*ports, dsc->disposition);
      }




      if (dsc->deallocate) {
          mach_msg_destroy_memory((vm_offset_t)dsc->address,
     dsc->count * sizeof(mach_port_t));
      }
      daddr = (mach_msg_descriptor_t *)(dsc + 1);
      break;
     }
     }
 }
    }
}
