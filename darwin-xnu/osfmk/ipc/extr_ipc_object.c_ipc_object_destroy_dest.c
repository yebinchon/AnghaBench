
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_msg_type_name_t ;
typedef int ipc_port_t ;
typedef int ipc_object_t ;


 scalar_t__ IOT_PORT ;
 int IO_VALID (int ) ;


 int assert (int) ;
 int io_active (int ) ;
 scalar_t__ io_otype (int ) ;
 int ip_full_kernel (int ) ;
 int ipc_notify_send_once (int ) ;
 int ipc_port_release_send (int ) ;
 int ipc_port_release_sonce (int ) ;
 int panic (char*) ;

void
ipc_object_destroy_dest(
 ipc_object_t object,
 mach_msg_type_name_t msgt_name)
{
 assert(IO_VALID(object));
 assert(io_otype(object) == IOT_PORT);

 switch (msgt_name) {
     case 129:
  ipc_port_release_send((ipc_port_t) object);
  break;

     case 128:
  if (io_active(object) &&
      !ip_full_kernel((ipc_port_t) object))
   ipc_notify_send_once((ipc_port_t) object);
  else
   ipc_port_release_sonce((ipc_port_t) object);
  break;

     default:
  panic("ipc_object_destroy_dest: strange rights");
 }
}
