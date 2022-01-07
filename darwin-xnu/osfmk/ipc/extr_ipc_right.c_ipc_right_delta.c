
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int uint64_t ;
typedef int mach_port_urefs_t ;
typedef int mach_port_right_t ;
typedef int mach_port_name_t ;
typedef int mach_port_mscount_t ;
typedef int mach_port_delta_t ;
typedef int kern_return_t ;
typedef scalar_t__ ipc_space_t ;
typedef int ipc_pset_t ;
typedef TYPE_1__* ipc_port_t ;
typedef int ipc_object_t ;
typedef TYPE_2__* ipc_entry_t ;
typedef int ipc_entry_bits_t ;
struct TYPE_24__ {int ie_bits; void* ie_object; int ie_request; } ;
struct TYPE_23__ {scalar_t__ ip_receiver; int ip_receiver_name; int ip_mscount; struct TYPE_23__* ip_nsrequest; int ip_srights; int ip_sorights; int * ip_pdrequest; int ip_context; int ip_guarded; } ;


 int IE_BITS_TYPE (int) ;
 int IE_BITS_TYPE_MASK ;
 int IE_BITS_UREFS (int) ;
 int IE_BITS_UREFS_MASK ;
 int IE_REQ_NONE ;
 void* IO_NULL ;
 int IPS_NULL ;
 TYPE_1__* IP_NULL ;
 int KERN_INVALID_RIGHT ;
 int KERN_INVALID_VALUE ;
 int KERN_SUCCESS ;


 int MACH_PORT_RIGHT_NUMBER ;




 int MACH_PORT_TYPE_DEAD_NAME ;
 int MACH_PORT_TYPE_PORT_SET ;
 int MACH_PORT_TYPE_RECEIVE ;
 int MACH_PORT_TYPE_SEND ;
 int MACH_PORT_TYPE_SEND_ONCE ;
 int MACH_PORT_TYPE_SEND_RECEIVE ;
 int MACH_PORT_TYPE_SEND_RIGHTS ;
 int MACH_PORT_UREFS_MAX ;
 int MACH_PORT_UREFS_OVERFLOW (int,int) ;
 int MACH_PORT_UREFS_UNDERFLOW (int,int) ;
 int assert (int) ;
 int ip_active (TYPE_1__*) ;
 int ip_lock (TYPE_1__*) ;
 int ip_reference (TYPE_1__*) ;
 int ip_release (TYPE_1__*) ;
 int ip_unlock (TYPE_1__*) ;
 int ipc_entry_dealloc (scalar_t__,int ,TYPE_2__*) ;
 int ipc_entry_modified (scalar_t__,int ,TYPE_2__*) ;
 int ipc_hash_delete (scalar_t__,int ,int ,TYPE_2__*) ;
 int ipc_hash_insert (scalar_t__,int ,int ,TYPE_2__*) ;
 int ipc_notify_no_senders (TYPE_1__*,int ) ;
 int ipc_notify_port_deleted (TYPE_1__*,int ) ;
 int ipc_notify_send_once (TYPE_1__*) ;
 int ipc_port_destroy (TYPE_1__*) ;
 int ipc_pset_destroy (int ) ;
 int ipc_right_check (scalar_t__,TYPE_1__*,int ,TYPE_2__*) ;
 TYPE_1__* ipc_right_request_cancel_macro (scalar_t__,TYPE_1__*,int ,TYPE_2__*) ;
 int ips_active (int ) ;
 int ips_lock (int ) ;
 int is_active (scalar_t__) ;
 int is_write_unlock (scalar_t__) ;
 int kGUARD_EXC_INVALID_RIGHT ;
 int kGUARD_EXC_INVALID_VALUE ;
 int kGUARD_EXC_MOD_REFS ;
 int mach_port_guard_exception (int ,int ,int ,int ) ;
 int panic (char*,int,int ,void*,void*) ;

kern_return_t
ipc_right_delta(
 ipc_space_t space,
 mach_port_name_t name,
 ipc_entry_t entry,
 mach_port_right_t right,
 mach_port_delta_t delta)
{
 ipc_port_t port = IP_NULL;
 ipc_entry_bits_t bits;

 bits = entry->ie_bits;
 assert(is_active(space));
 assert(right < MACH_PORT_RIGHT_NUMBER);



 switch (right) {
     case 131: {
  ipc_pset_t pset;

  if ((bits & MACH_PORT_TYPE_PORT_SET) == 0) {
   mach_port_guard_exception(name, 0, 0, kGUARD_EXC_INVALID_RIGHT);
   goto invalid_right;
  }

  assert(IE_BITS_TYPE(bits) == MACH_PORT_TYPE_PORT_SET);
  assert(IE_BITS_UREFS(bits) == 0);
  assert(entry->ie_request == IE_REQ_NONE);

  if (delta == 0)
   goto success;

  if (delta != -1)
   goto invalid_value;

  pset = (ipc_pset_t) entry->ie_object;
  assert(pset != IPS_NULL);

  entry->ie_object = IO_NULL;
  ipc_entry_dealloc(space, name, entry);

  ips_lock(pset);
  assert(ips_active(pset));
  is_write_unlock(space);

  ipc_pset_destroy(pset);
  break;
     }

     case 130: {
  ipc_port_t request = IP_NULL;

  if ((bits & MACH_PORT_TYPE_RECEIVE) == 0) {
   mach_port_guard_exception(name, 0, 0, kGUARD_EXC_INVALID_RIGHT);
   goto invalid_right;
  }

  if (delta == 0)
   goto success;

  if (delta != -1)
   goto invalid_value;

  port = (ipc_port_t) entry->ie_object;
  assert(port != IP_NULL);







  ip_lock(port);
  assert(ip_active(port));
  assert(port->ip_receiver_name == name);
  assert(port->ip_receiver == space);


  if(port->ip_guarded) {
   uint64_t portguard = port->ip_context;
   ip_unlock(port);
   is_write_unlock(space);

   mach_port_guard_exception(name, 0, portguard, kGUARD_EXC_MOD_REFS);
   goto guard_failure;
  }

  if (bits & MACH_PORT_TYPE_SEND) {
   assert(IE_BITS_TYPE(bits) ==
     MACH_PORT_TYPE_SEND_RECEIVE);
   assert(IE_BITS_UREFS(bits) > 0);
   assert(port->ip_srights > 0);

   if (port->ip_pdrequest != ((void*)0)) {
    ipc_entry_modified(space, name, entry);
    entry->ie_bits &= ~MACH_PORT_TYPE_RECEIVE;
    ipc_hash_insert(space, (ipc_object_t) port,
        name, entry);
    ip_reference(port);
   } else {







    bits &= ~IE_BITS_TYPE_MASK;
    bits |= MACH_PORT_TYPE_DEAD_NAME;
    if (entry->ie_request) {
     entry->ie_request = IE_REQ_NONE;

     if (IE_BITS_UREFS(bits) < MACH_PORT_UREFS_MAX)
      bits++;
    }
    entry->ie_bits = bits;
    entry->ie_object = IO_NULL;
    ipc_entry_modified(space, name, entry);
   }
  } else {
   assert(IE_BITS_TYPE(bits) == MACH_PORT_TYPE_RECEIVE);
   assert(IE_BITS_UREFS(bits) == 0);

   request = ipc_right_request_cancel_macro(space, port,
            name, entry);
   entry->ie_object = IO_NULL;
   ipc_entry_dealloc(space, name, entry);
  }
  is_write_unlock(space);

  ipc_port_destroy(port);

  if (request != IP_NULL)
   ipc_notify_port_deleted(request, name);
  break;
     }

     case 128: {
  ipc_port_t request;

  if ((bits & MACH_PORT_TYPE_SEND_ONCE) == 0)
   goto invalid_right;

  assert(IE_BITS_TYPE(bits) == MACH_PORT_TYPE_SEND_ONCE);
  assert(IE_BITS_UREFS(bits) == 1);

  port = (ipc_port_t) entry->ie_object;
  assert(port != IP_NULL);

  if (ipc_right_check(space, port, name, entry)) {
   assert(!(entry->ie_bits & MACH_PORT_TYPE_SEND_ONCE));
   mach_port_guard_exception(name, 0, 0, kGUARD_EXC_INVALID_RIGHT);
   goto invalid_right;
  }


  assert(port->ip_sorights > 0);

  if ((delta > 0) || (delta < -1)) {
   ip_unlock(port);
   goto invalid_value;
  }

  if (delta == 0) {
   ip_unlock(port);
   goto success;
  }

  request = ipc_right_request_cancel_macro(space, port, name, entry);
  ip_unlock(port);

  entry->ie_object = IO_NULL;
  ipc_entry_dealloc(space, name, entry);

  is_write_unlock(space);

  ipc_notify_send_once(port);

  if (request != IP_NULL)
   ipc_notify_port_deleted(request, name);
  break;
     }

     case 133: {
  ipc_port_t relport = IP_NULL;
  mach_port_urefs_t urefs;

  if (bits & MACH_PORT_TYPE_SEND_RIGHTS) {

   port = (ipc_port_t) entry->ie_object;
   assert(port != IP_NULL);

   if (!ipc_right_check(space, port, name, entry)) {

    ip_unlock(port);
    port = IP_NULL;
    mach_port_guard_exception(name, 0, 0, kGUARD_EXC_INVALID_RIGHT);
    goto invalid_right;
   }
   bits = entry->ie_bits;
   relport = port;
   port = IP_NULL;
  } else if ((bits & MACH_PORT_TYPE_DEAD_NAME) == 0) {
   mach_port_guard_exception(name, 0, 0, kGUARD_EXC_INVALID_RIGHT);
   goto invalid_right;
  }

  assert(IE_BITS_TYPE(bits) == MACH_PORT_TYPE_DEAD_NAME);
  assert(IE_BITS_UREFS(bits) > 0);
  assert(entry->ie_object == IO_NULL);
  assert(entry->ie_request == IE_REQ_NONE);

  if (delta > ((mach_port_delta_t)MACH_PORT_UREFS_MAX) ||
      delta < (-((mach_port_delta_t)MACH_PORT_UREFS_MAX))) {
   goto invalid_value;
  }

  urefs = IE_BITS_UREFS(bits);

  if (urefs == MACH_PORT_UREFS_MAX) {





   if (delta != (-((mach_port_delta_t)MACH_PORT_UREFS_MAX)))
    delta = 0;
  } else {
   if (MACH_PORT_UREFS_UNDERFLOW(urefs, delta))
    goto invalid_value;
   if (MACH_PORT_UREFS_OVERFLOW(urefs, delta)) {

    delta = MACH_PORT_UREFS_MAX - urefs;
   }
  }

  if ((urefs + delta) == 0) {
   ipc_entry_dealloc(space, name, entry);
  } else if (delta != 0) {
   entry->ie_bits = bits + delta;
   ipc_entry_modified(space, name, entry);
  }

  is_write_unlock(space);

  if (relport != IP_NULL)
   ip_release(relport);

  break;
     }

     case 129: {
  mach_port_urefs_t urefs;
  ipc_port_t request = IP_NULL;
  ipc_port_t nsrequest = IP_NULL;
  ipc_port_t port_to_release = IP_NULL;
  mach_port_mscount_t mscount = 0;

  if ((bits & MACH_PORT_TYPE_SEND) == 0) {

   if ((bits & MACH_PORT_TYPE_DEAD_NAME) == 0) {
    mach_port_guard_exception(name, 0, 0, kGUARD_EXC_INVALID_RIGHT);
   }
   goto invalid_right;
  }



  port = (ipc_port_t) entry->ie_object;
  assert(port != IP_NULL);

  if (ipc_right_check(space, port, name, entry)) {
   assert((entry->ie_bits & MACH_PORT_TYPE_SEND) == 0);
   goto invalid_right;
  }


  assert(port->ip_srights > 0);

  if (delta > ((mach_port_delta_t)MACH_PORT_UREFS_MAX) ||
      delta < (-((mach_port_delta_t)MACH_PORT_UREFS_MAX))) {
   ip_unlock(port);
   goto invalid_value;
  }

  urefs = IE_BITS_UREFS(bits);

  if (urefs == MACH_PORT_UREFS_MAX) {





   if (delta != (-((mach_port_delta_t)MACH_PORT_UREFS_MAX)))
    delta = 0;
  } else {
   if (MACH_PORT_UREFS_UNDERFLOW(urefs, delta)) {
    ip_unlock(port);
    goto invalid_value;
   }
   if (MACH_PORT_UREFS_OVERFLOW(urefs, delta)) {

    delta = MACH_PORT_UREFS_MAX - urefs;
   }
  }

  if ((urefs + delta) == 0) {
   if (--port->ip_srights == 0) {
    nsrequest = port->ip_nsrequest;
    if (nsrequest != IP_NULL) {
     port->ip_nsrequest = IP_NULL;
     mscount = port->ip_mscount;
    }
   }

   if (bits & MACH_PORT_TYPE_RECEIVE) {
    assert(port->ip_receiver_name == name);
    assert(port->ip_receiver == space);
    ip_unlock(port);
    assert(IE_BITS_TYPE(bits) ==
      MACH_PORT_TYPE_SEND_RECEIVE);

    entry->ie_bits = bits &~ (IE_BITS_UREFS_MASK|
             MACH_PORT_TYPE_SEND);
    ipc_entry_modified(space, name, entry);
   } else {
    assert(IE_BITS_TYPE(bits) ==
      MACH_PORT_TYPE_SEND);

    request = ipc_right_request_cancel_macro(space, port,
             name, entry);
    ipc_hash_delete(space, (ipc_object_t) port,
      name, entry);

    ip_unlock(port);
    port_to_release = port;

    entry->ie_object = IO_NULL;
    ipc_entry_dealloc(space, name, entry);
   }
  } else if (delta != 0) {
   ip_unlock(port);
   entry->ie_bits = bits + delta;
   ipc_entry_modified(space, name, entry);
  } else {
   ip_unlock(port);
  }

  is_write_unlock(space);

  if (port_to_release != IP_NULL)
   ip_release(port_to_release);

  if (nsrequest != IP_NULL)
   ipc_notify_no_senders(nsrequest, mscount);

  if (request != IP_NULL)
   ipc_notify_port_deleted(request, name);
  break;
     }

     case 132:
  goto invalid_right;

     default:
  panic("ipc_right_delta: strange right %d for 0x%x (%p) in space:%p",
        right, name, (void *)entry, (void *)space);
 }

 return KERN_SUCCESS;

    success:
 is_write_unlock(space);
 return KERN_SUCCESS;

    invalid_right:
 is_write_unlock(space);
 if (port != IP_NULL)
  ip_release(port);
 return KERN_INVALID_RIGHT;

    invalid_value:
 is_write_unlock(space);
 mach_port_guard_exception(name, 0, 0, kGUARD_EXC_INVALID_VALUE);
 return KERN_INVALID_VALUE;

    guard_failure:
 return KERN_INVALID_RIGHT;
}
