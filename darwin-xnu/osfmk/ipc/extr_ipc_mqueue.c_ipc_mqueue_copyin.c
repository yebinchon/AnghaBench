
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int mach_port_name_t ;
typedef int mach_msg_return_t ;
typedef scalar_t__ ipc_space_t ;
typedef TYPE_1__* ipc_pset_t ;
typedef TYPE_1__* ipc_port_t ;
typedef scalar_t__ ipc_object_t ;
typedef int * ipc_mqueue_t ;
typedef TYPE_3__* ipc_entry_t ;
struct TYPE_14__ {int ie_bits; scalar_t__ ie_object; } ;
struct TYPE_13__ {scalar_t__ ip_receiver; int ips_messages; int ip_messages; int ip_receiver_name; } ;


 TYPE_3__* IE_NULL ;
 TYPE_1__* IPS_NULL ;
 TYPE_1__* IP_NULL ;
 int MACH_MSG_SUCCESS ;
 int MACH_PORT_TYPE_PORT_SET ;
 int MACH_PORT_TYPE_RECEIVE ;
 int MACH_RCV_INVALID_NAME ;
 int __IGNORE_WCASTALIGN (TYPE_1__*) ;
 int assert (int) ;
 int io_reference (scalar_t__) ;
 int io_unlock (scalar_t__) ;
 int ip_active (TYPE_1__*) ;
 int ip_lock (TYPE_1__*) ;
 TYPE_3__* ipc_entry_lookup (scalar_t__,int ) ;
 int ips_active (TYPE_1__*) ;
 int ips_lock (TYPE_1__*) ;
 int is_active (scalar_t__) ;
 int is_read_lock (scalar_t__) ;
 int is_read_unlock (scalar_t__) ;

mach_msg_return_t
ipc_mqueue_copyin(
 ipc_space_t space,
 mach_port_name_t name,
 ipc_mqueue_t *mqueuep,
 ipc_object_t *objectp)
{
 ipc_entry_t entry;
 ipc_object_t object;
 ipc_mqueue_t mqueue;

 is_read_lock(space);
 if (!is_active(space)) {
  is_read_unlock(space);
  return MACH_RCV_INVALID_NAME;
 }

 entry = ipc_entry_lookup(space, name);
 if (entry == IE_NULL) {
  is_read_unlock(space);
  return MACH_RCV_INVALID_NAME;
 }

 object = entry->ie_object;

 if (entry->ie_bits & MACH_PORT_TYPE_RECEIVE) {
  ipc_port_t port;

  __IGNORE_WCASTALIGN(port = (ipc_port_t) object);
  assert(port != IP_NULL);

  ip_lock(port);
  assert(ip_active(port));
  assert(port->ip_receiver_name == name);
  assert(port->ip_receiver == space);
  is_read_unlock(space);
  mqueue = &port->ip_messages;

 } else if (entry->ie_bits & MACH_PORT_TYPE_PORT_SET) {
  ipc_pset_t pset;

  __IGNORE_WCASTALIGN(pset = (ipc_pset_t) object);
  assert(pset != IPS_NULL);

  ips_lock(pset);
  assert(ips_active(pset));
  is_read_unlock(space);

  mqueue = &pset->ips_messages;
 } else {
  is_read_unlock(space);
  return MACH_RCV_INVALID_NAME;
 }






 io_reference(object);
 io_unlock(object);

 *objectp = object;
 *mqueuep = mqueue;
 return MACH_MSG_SUCCESS;
}
