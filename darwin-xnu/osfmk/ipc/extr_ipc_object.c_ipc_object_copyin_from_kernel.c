
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int mach_msg_type_name_t ;
typedef TYPE_1__* ipc_port_t ;
typedef int ipc_object_t ;
struct TYPE_9__ {int is_node_id; } ;
struct TYPE_8__ {int ip_srights; int ip_sorights; int ip_receiver_name; int ip_mscount; TYPE_2__* ip_receiver; int ip_messages; int ip_destination; } ;


 int HOST_LOCAL_NODE ;
 int IO_VALID (int ) ;
 int IP_NULL ;






 int MACH_PORT_NULL ;
 int assert (int) ;
 int imq_lock (int *) ;
 int imq_unlock (int *) ;
 int ip_active (TYPE_1__*) ;
 int ip_lock (TYPE_1__*) ;
 int ip_reference (TYPE_1__*) ;
 int ip_unlock (TYPE_1__*) ;
 int ipc_port_set_mscount (TYPE_1__*,int ) ;
 TYPE_2__* ipc_space_kernel ;
 int panic (char*) ;

void
ipc_object_copyin_from_kernel(
 ipc_object_t object,
 mach_msg_type_name_t msgt_name)
{
 assert(IO_VALID(object));

 switch (msgt_name) {
     case 130: {
  ipc_port_t port = (ipc_port_t) object;

  ip_lock(port);
  imq_lock(&port->ip_messages);
  assert(ip_active(port));
  if (port->ip_destination != IP_NULL) {
   assert(port->ip_receiver == ipc_space_kernel);


   ipc_port_set_mscount(port, 0);

   port->ip_receiver_name = MACH_PORT_NULL;
   port->ip_destination = IP_NULL;
  }
  imq_unlock(&port->ip_messages);
  ip_unlock(port);
  break;
     }

     case 133: {
  ipc_port_t port = (ipc_port_t) object;

  ip_lock(port);
  if (ip_active(port)) {
   assert(port->ip_srights > 0);
   port->ip_srights++;
  }
  ip_reference(port);
  ip_unlock(port);
  break;
     }

     case 132: {
  ipc_port_t port = (ipc_port_t) object;

  ip_lock(port);
  if (ip_active(port)) {
   assert(port->ip_receiver_name != MACH_PORT_NULL);
   assert((port->ip_receiver == ipc_space_kernel) ||
                   (port->ip_receiver->is_node_id != HOST_LOCAL_NODE));
   port->ip_mscount++;
  }

  port->ip_srights++;
  ip_reference(port);
  ip_unlock(port);
  break;
     }

     case 129: {

  assert(((ipc_port_t)object)->ip_srights);
  break;
     }

     case 131: {
  ipc_port_t port = (ipc_port_t) object;

  ip_lock(port);
  if (ip_active(port)) {
   assert(port->ip_receiver_name != MACH_PORT_NULL);
  }
  port->ip_sorights++;
  ip_reference(port);
  ip_unlock(port);
  break;
     }

     case 128: {

      assert(((ipc_port_t)object)->ip_sorights);
  break;
     }

     default:
  panic("ipc_object_copyin_from_kernel: strange rights");
 }
}
