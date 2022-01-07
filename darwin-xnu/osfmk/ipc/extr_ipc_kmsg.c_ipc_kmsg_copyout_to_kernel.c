
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int mach_port_name_t ;
typedef int mach_msg_type_name_t ;
typedef int ipc_space_t ;
typedef scalar_t__ ipc_object_t ;
typedef TYPE_2__* ipc_kmsg_t ;
struct TYPE_5__ {TYPE_1__* ikm_header; } ;
struct TYPE_4__ {int msgh_bits; void* msgh_remote_port; void* msgh_local_port; } ;


 void* CAST_MACH_NAME_TO_PORT (int ) ;
 int CAST_MACH_PORT_TO_NAME (scalar_t__) ;
 int IO_VALID (scalar_t__) ;
 int MACH_MSGH_BITS (int ,int ) ;
 int MACH_MSGH_BITS_LOCAL (int) ;
 int MACH_MSGH_BITS_OTHER (int) ;
 int MACH_MSGH_BITS_REMOTE (int) ;
 int MACH_PORT_DEAD ;
 int assert (int ) ;
 scalar_t__ io_active (scalar_t__) ;
 int io_lock (scalar_t__) ;
 int io_release (scalar_t__) ;
 int io_unlock (scalar_t__) ;
 int ipc_object_copyout_dest (int ,scalar_t__,int ,int *) ;

void
ipc_kmsg_copyout_to_kernel(
 ipc_kmsg_t kmsg,
 ipc_space_t space)
{
 ipc_object_t dest;
 ipc_object_t reply;
 mach_msg_type_name_t dest_type;
 mach_msg_type_name_t reply_type;
 mach_port_name_t dest_name, reply_name;

 dest = (ipc_object_t) kmsg->ikm_header->msgh_remote_port;
 reply = (ipc_object_t) kmsg->ikm_header->msgh_local_port;
 dest_type = MACH_MSGH_BITS_REMOTE(kmsg->ikm_header->msgh_bits);
 reply_type = MACH_MSGH_BITS_LOCAL(kmsg->ikm_header->msgh_bits);

 assert(IO_VALID(dest));

 io_lock(dest);
 if (io_active(dest)) {
  ipc_object_copyout_dest(space, dest, dest_type, &dest_name);

 } else {
  io_unlock(dest);
  io_release(dest);
  dest_name = MACH_PORT_DEAD;
 }

 reply_name = CAST_MACH_PORT_TO_NAME(reply);

 kmsg->ikm_header->msgh_bits =
  (MACH_MSGH_BITS_OTHER(kmsg->ikm_header->msgh_bits) |
     MACH_MSGH_BITS(reply_type, dest_type));
 kmsg->ikm_header->msgh_local_port = CAST_MACH_NAME_TO_PORT(dest_name);
 kmsg->ikm_header->msgh_remote_port = CAST_MACH_NAME_TO_PORT(reply_name);
}
