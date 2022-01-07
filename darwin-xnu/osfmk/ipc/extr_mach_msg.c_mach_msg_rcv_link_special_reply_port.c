
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mach_port_name_t ;
typedef int mach_msg_return_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ ipc_port_t ;
typedef int ipc_object_t ;
struct TYPE_2__ {scalar_t__ ith_special_reply_port; } ;


 scalar_t__ IP_NULL ;
 scalar_t__ IP_VALID (scalar_t__) ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_MSG_SUCCESS ;
 int MACH_MSG_TYPE_COPY_SEND ;
 int MACH_PORT_VALID (int ) ;
 int MACH_RCV_INVALID_NOTIFY ;
 int current_space () ;
 TYPE_1__* current_thread () ;
 scalar_t__ ipc_object_copyin (int ,int ,int ,int *) ;
 int ipc_port_link_special_reply_port (scalar_t__,scalar_t__) ;
 int ipc_port_release_send (scalar_t__) ;

__attribute__((used)) static mach_msg_return_t
mach_msg_rcv_link_special_reply_port(
 ipc_port_t special_reply_port,
 mach_port_name_t dest_name_port)
{
 ipc_port_t dest_port = IP_NULL;
 kern_return_t kr;

 if (current_thread()->ith_special_reply_port != special_reply_port) {
  return MACH_RCV_INVALID_NOTIFY;
 }


 if (!MACH_PORT_VALID(dest_name_port)) {
  return MACH_RCV_INVALID_NOTIFY;
 }

 kr = ipc_object_copyin(current_space(),
          dest_name_port, MACH_MSG_TYPE_COPY_SEND,
          (ipc_object_t *) &dest_port);





 if (kr == KERN_SUCCESS && IP_VALID(dest_port)) {
  ipc_port_link_special_reply_port(special_reply_port,
   dest_port);


  ipc_port_release_send(dest_port);
 }
 return MACH_MSG_SUCCESS;
}
