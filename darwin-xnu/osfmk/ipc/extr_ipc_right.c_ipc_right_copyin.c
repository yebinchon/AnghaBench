
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int mach_port_name_t ;
typedef int mach_msg_type_name_t ;
typedef int kern_return_t ;
typedef int ipc_space_t ;
typedef TYPE_1__* ipc_port_t ;
typedef int ipc_object_t ;
typedef TYPE_2__* ipc_entry_t ;
typedef int ipc_entry_bits_t ;
typedef int boolean_t ;
struct TYPE_21__ {int ie_bits; scalar_t__ ie_object; scalar_t__ ie_request; } ;
struct TYPE_20__ {int ip_tempowner; int ip_impcount; int ip_sorights; int ip_srights; int ip_receiver; int ip_receiver_name; int ip_imp_task; int ip_messages; struct TYPE_20__* ip_destination; int ip_mscount; } ;


 int FALSE ;
 int IE_BITS_TYPE (int) ;
 int IE_BITS_UREFS (int) ;
 int IE_BITS_UREFS_MASK ;
 scalar_t__ IE_REQ_NONE ;
 int IIT_NULL ;
 int IKOT_NONE ;
 int IO_DEAD ;
 void* IO_NULL ;
 TYPE_1__* IP_NULL ;
 int KERN_INVALID_CAPABILITY ;
 int KERN_INVALID_RIGHT ;
 int KERN_SUCCESS ;






 int MACH_PORT_NULL ;
 int MACH_PORT_TYPE_DEAD_NAME ;
 int MACH_PORT_TYPE_RECEIVE ;
 int MACH_PORT_TYPE_SEND ;
 int MACH_PORT_TYPE_SEND_ONCE ;
 int MACH_PORT_TYPE_SEND_RECEIVE ;
 int MACH_PORT_TYPE_SEND_RIGHTS ;
 int MACH_PORT_UREFS_MAX ;
 int assert (int) ;
 int imq_lock (int *) ;
 int imq_unlock (int *) ;
 int io_kotype (scalar_t__) ;
 int ip_active (TYPE_1__*) ;
 int ip_lock (TYPE_1__*) ;
 int ip_reference (TYPE_1__*) ;
 int ip_unlock (TYPE_1__*) ;
 int ipc_entry_modified (int ,int ,TYPE_2__*) ;
 int ipc_hash_delete (int ,int ,int ,TYPE_2__*) ;
 int ipc_hash_insert (int ,int ,int ,TYPE_2__*) ;
 int ipc_port_clear_receiver (TYPE_1__*,int ) ;
 int ipc_right_check (int ,TYPE_1__*,int ,TYPE_2__*) ;
 TYPE_1__* ipc_right_request_cancel_macro (int ,TYPE_1__*,int ,TYPE_2__*) ;
 int is_active (int ) ;

kern_return_t
ipc_right_copyin(
 ipc_space_t space,
 mach_port_name_t name,
 ipc_entry_t entry,
 mach_msg_type_name_t msgt_name,
 boolean_t deadok,
 ipc_object_t *objectp,
 ipc_port_t *sorightp,
 ipc_port_t *releasep,
 int *assertcntp)
{
 ipc_entry_bits_t bits;
 ipc_port_t port;

 *releasep = IP_NULL;
 *assertcntp = 0;

 bits = entry->ie_bits;

 assert(is_active(space));

 switch (msgt_name) {
     case 132: {

  if ((bits & MACH_PORT_TYPE_RECEIVE) == 0)
   goto invalid_right;

  port = (ipc_port_t) entry->ie_object;
  assert(port != IP_NULL);

  ip_lock(port);
  assert(ip_active(port));
  assert(port->ip_receiver_name == name);
  assert(port->ip_receiver == space);

  port->ip_mscount++;
  port->ip_srights++;
  ip_reference(port);
  ip_unlock(port);

  *objectp = (ipc_object_t) port;
  *sorightp = IP_NULL;
  break;
     }

     case 131: {

  if ((bits & MACH_PORT_TYPE_RECEIVE) == 0)
   goto invalid_right;

  port = (ipc_port_t) entry->ie_object;
  assert(port != IP_NULL);

  ip_lock(port);
  assert(ip_active(port));
  assert(port->ip_receiver_name == name);
  assert(port->ip_receiver == space);

  port->ip_sorights++;
  ip_reference(port);
  ip_unlock(port);

  *objectp = (ipc_object_t) port;
  *sorightp = IP_NULL;
  break;
     }

     case 130: {
  ipc_port_t request = IP_NULL;

  if ((bits & MACH_PORT_TYPE_RECEIVE) == 0)
   goto invalid_right;
  if (io_kotype(entry->ie_object) != IKOT_NONE) {






   return KERN_INVALID_CAPABILITY;
  }

  port = (ipc_port_t) entry->ie_object;
  assert(port != IP_NULL);

  ip_lock(port);
  assert(ip_active(port));
  assert(port->ip_receiver_name == name);
  assert(port->ip_receiver == space);

  if (bits & MACH_PORT_TYPE_SEND) {
   assert(IE_BITS_TYPE(bits) ==
     MACH_PORT_TYPE_SEND_RECEIVE);
   assert(IE_BITS_UREFS(bits) > 0);
   assert(port->ip_srights > 0);

   ipc_hash_insert(space, (ipc_object_t) port,
     name, entry);
   ip_reference(port);
  } else {
   assert(IE_BITS_TYPE(bits) == MACH_PORT_TYPE_RECEIVE);
   assert(IE_BITS_UREFS(bits) == 0);

   request = ipc_right_request_cancel_macro(space, port,
            name, entry);
   entry->ie_object = IO_NULL;
  }
  entry->ie_bits = bits &~ MACH_PORT_TYPE_RECEIVE;
  ipc_entry_modified(space, name, entry);

  (void)ipc_port_clear_receiver(port, FALSE);
  imq_lock(&port->ip_messages);
  port->ip_receiver_name = MACH_PORT_NULL;
  port->ip_destination = IP_NULL;
  imq_unlock(&port->ip_messages);
  ip_unlock(port);

  *objectp = (ipc_object_t) port;
  *sorightp = request;
  break;
     }

     case 133: {

  if (bits & MACH_PORT_TYPE_DEAD_NAME)
   goto copy_dead;



  if ((bits & MACH_PORT_TYPE_SEND_RIGHTS) == 0)
   goto invalid_right;

  assert(IE_BITS_UREFS(bits) > 0);

  port = (ipc_port_t) entry->ie_object;
  assert(port != IP_NULL);

  if (ipc_right_check(space, port, name, entry)) {
   bits = entry->ie_bits;
   *releasep = port;
   goto copy_dead;
  }


  if ((bits & MACH_PORT_TYPE_SEND) == 0) {
   assert(IE_BITS_TYPE(bits) == MACH_PORT_TYPE_SEND_ONCE);
   assert(port->ip_sorights > 0);

   ip_unlock(port);
   goto invalid_right;
  }

  assert(port->ip_srights > 0);

  port->ip_srights++;
  ip_reference(port);
  ip_unlock(port);

  *objectp = (ipc_object_t) port;
  *sorightp = IP_NULL;
  break;
     }

     case 129: {
  ipc_port_t request = IP_NULL;

  if (bits & MACH_PORT_TYPE_DEAD_NAME)
   goto move_dead;



  if ((bits & MACH_PORT_TYPE_SEND_RIGHTS) == 0)
   goto invalid_right;

  assert(IE_BITS_UREFS(bits) > 0);

  port = (ipc_port_t) entry->ie_object;
  assert(port != IP_NULL);

  if (ipc_right_check(space, port, name, entry)) {
   bits = entry->ie_bits;
   *releasep = port;
   goto move_dead;
  }


  if ((bits & MACH_PORT_TYPE_SEND) == 0) {
   assert(IE_BITS_TYPE(bits) == MACH_PORT_TYPE_SEND_ONCE);
   assert(port->ip_sorights > 0);

   ip_unlock(port);
   goto invalid_right;
  }

  assert(port->ip_srights > 0);

  if (IE_BITS_UREFS(bits) == 1) {
   if (bits & MACH_PORT_TYPE_RECEIVE) {
    assert(port->ip_receiver_name == name);
    assert(port->ip_receiver == space);
    assert(IE_BITS_TYPE(bits) ==
      MACH_PORT_TYPE_SEND_RECEIVE);

    ip_reference(port);
   } else {
    assert(IE_BITS_TYPE(bits) ==
      MACH_PORT_TYPE_SEND);

    request = ipc_right_request_cancel_macro(space, port,
             name, entry);
    ipc_hash_delete(space, (ipc_object_t) port,
      name, entry);
    entry->ie_object = IO_NULL;

   }
   entry->ie_bits = bits &~
    (IE_BITS_UREFS_MASK|MACH_PORT_TYPE_SEND);
  } else {
   port->ip_srights++;
   ip_reference(port);

   if (IE_BITS_UREFS(bits) < MACH_PORT_UREFS_MAX)
    entry->ie_bits = bits-1;
  }

  ipc_entry_modified(space, name, entry);
  ip_unlock(port);

  *objectp = (ipc_object_t) port;
  *sorightp = request;
  break;
     }

     case 128: {
  ipc_port_t request;

  if (bits & MACH_PORT_TYPE_DEAD_NAME)
   goto move_dead;



  if ((bits & MACH_PORT_TYPE_SEND_RIGHTS) == 0)
   goto invalid_right;

  assert(IE_BITS_UREFS(bits) > 0);

  port = (ipc_port_t) entry->ie_object;
  assert(port != IP_NULL);

  if (ipc_right_check(space, port, name, entry)) {
   bits = entry->ie_bits;
   *releasep = port;
   goto move_dead;
  }


  if ((bits & MACH_PORT_TYPE_SEND_ONCE) == 0) {
   assert(bits & MACH_PORT_TYPE_SEND);
   assert(port->ip_srights > 0);

   ip_unlock(port);
   goto invalid_right;
  }

  assert(IE_BITS_TYPE(bits) == MACH_PORT_TYPE_SEND_ONCE);
  assert(IE_BITS_UREFS(bits) == 1);
  assert(port->ip_sorights > 0);

  request = ipc_right_request_cancel_macro(space, port, name, entry);
  ip_unlock(port);

  entry->ie_object = IO_NULL;
  entry->ie_bits = bits &~
   (IE_BITS_UREFS_MASK | MACH_PORT_TYPE_SEND_ONCE);
  ipc_entry_modified(space, name, entry);
  *objectp = (ipc_object_t) port;
  *sorightp = request;
  break;
     }

     default:
     invalid_right:
  return KERN_INVALID_RIGHT;
 }

 return KERN_SUCCESS;

    copy_dead:
 assert(IE_BITS_TYPE(bits) == MACH_PORT_TYPE_DEAD_NAME);
 assert(IE_BITS_UREFS(bits) > 0);
 assert(entry->ie_request == IE_REQ_NONE);
 assert(entry->ie_object == 0);

 if (!deadok)
  goto invalid_right;

 *objectp = IO_DEAD;
 *sorightp = IP_NULL;
 return KERN_SUCCESS;

    move_dead:
 assert(IE_BITS_TYPE(bits) == MACH_PORT_TYPE_DEAD_NAME);
 assert(IE_BITS_UREFS(bits) > 0);
 assert(entry->ie_request == IE_REQ_NONE);
 assert(entry->ie_object == 0);

 if (!deadok)
  goto invalid_right;

 if (IE_BITS_UREFS(bits) == 1) {
  bits &= ~MACH_PORT_TYPE_DEAD_NAME;
 }

 if (IE_BITS_UREFS(bits) < MACH_PORT_UREFS_MAX)
  entry->ie_bits = bits-1;

 ipc_entry_modified(space, name, entry);
 *objectp = IO_DEAD;
 *sorightp = IP_NULL;
 return KERN_SUCCESS;

}
