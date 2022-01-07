
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
 scalar_t__ io_otype (int ) ;
 int ipc_notify_send_once (int ) ;
 int ipc_port_release_receive (int ) ;
 int ipc_port_release_send (int ) ;
 int panic (char*) ;

void
ipc_object_destroy(
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
  ipc_notify_send_once((ipc_port_t) object);
  break;

     case 130:
  ipc_port_release_receive((ipc_port_t) object);
  break;

     default:
  panic("ipc_object_destroy: strange rights");
 }
}
