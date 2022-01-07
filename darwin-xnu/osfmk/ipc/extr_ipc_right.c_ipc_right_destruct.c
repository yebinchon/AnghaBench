
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ mach_port_urefs_t ;
typedef int mach_port_name_t ;
typedef int mach_port_mscount_t ;
typedef scalar_t__ mach_port_delta_t ;
typedef int kern_return_t ;
typedef scalar_t__ ipc_space_t ;
typedef TYPE_1__* ipc_port_t ;
typedef int ipc_object_t ;
typedef TYPE_2__* ipc_entry_t ;
typedef int ipc_entry_bits_t ;
struct TYPE_19__ {int ie_bits; void* ie_object; scalar_t__ ie_request; } ;
struct TYPE_18__ {scalar_t__ ip_receiver; scalar_t__ ip_context; scalar_t__ ip_srights; int * ip_pdrequest; int ip_mscount; struct TYPE_18__* ip_nsrequest; scalar_t__ ip_guarded; int ip_receiver_name; } ;


 int IE_BITS_TYPE (int) ;
 int IE_BITS_TYPE_MASK ;
 scalar_t__ IE_BITS_UREFS (int) ;
 int IE_BITS_UREFS_MASK ;
 scalar_t__ IE_REQ_NONE ;
 void* IO_NULL ;
 TYPE_1__* IP_NULL ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_INVALID_RIGHT ;
 int KERN_INVALID_VALUE ;
 int KERN_SUCCESS ;
 int MACH_PORT_TYPE_DEAD_NAME ;
 int MACH_PORT_TYPE_RECEIVE ;
 int MACH_PORT_TYPE_SEND ;
 int MACH_PORT_TYPE_SEND_RECEIVE ;
 scalar_t__ MACH_PORT_UREFS_MAX ;
 scalar_t__ MACH_PORT_UREFS_UNDERFLOW (scalar_t__,scalar_t__) ;
 int assert (int) ;
 int ip_active (TYPE_1__*) ;
 int ip_lock (TYPE_1__*) ;
 int ip_reference (TYPE_1__*) ;
 int ip_unlock (TYPE_1__*) ;
 int ipc_entry_dealloc (scalar_t__,int ,TYPE_2__*) ;
 int ipc_entry_modified (scalar_t__,int ,TYPE_2__*) ;
 int ipc_hash_insert (scalar_t__,int ,int ,TYPE_2__*) ;
 int ipc_notify_no_senders (TYPE_1__*,int ) ;
 int ipc_notify_port_deleted (TYPE_1__*,int ) ;
 int ipc_port_destroy (TYPE_1__*) ;
 TYPE_1__* ipc_right_request_cancel_macro (scalar_t__,TYPE_1__*,int ,TYPE_2__*) ;
 int is_active (scalar_t__) ;
 int is_write_unlock (scalar_t__) ;
 int kGUARD_EXC_DESTROY ;
 int kGUARD_EXC_INVALID_RIGHT ;
 int kGUARD_EXC_INVALID_VALUE ;
 int mach_port_guard_exception (int ,int ,scalar_t__,int ) ;

kern_return_t
ipc_right_destruct(
 ipc_space_t space,
 mach_port_name_t name,
 ipc_entry_t entry,
 mach_port_delta_t srdelta,
 uint64_t guard)
{
 ipc_port_t port = IP_NULL;
 ipc_entry_bits_t bits;

 mach_port_urefs_t urefs;
 ipc_port_t request = IP_NULL;
 ipc_port_t nsrequest = IP_NULL;
 mach_port_mscount_t mscount = 0;

 bits = entry->ie_bits;

 assert(is_active(space));

 if (((bits & MACH_PORT_TYPE_RECEIVE) == 0) ||
     (srdelta && ((bits & MACH_PORT_TYPE_SEND) == 0))) {
  is_write_unlock(space);
  mach_port_guard_exception(name, 0, 0, kGUARD_EXC_INVALID_RIGHT);
  return KERN_INVALID_RIGHT;
 }

 if (srdelta > 0)
  goto invalid_value;

 port = (ipc_port_t) entry->ie_object;
 assert(port != IP_NULL);

 ip_lock(port);
 assert(ip_active(port));
 assert(port->ip_receiver_name == name);
 assert(port->ip_receiver == space);


 if(port->ip_guarded && (guard != port->ip_context)) {
  uint64_t portguard = port->ip_context;
  ip_unlock(port);
  is_write_unlock(space);
  mach_port_guard_exception(name, 0, portguard, kGUARD_EXC_DESTROY);
  return KERN_INVALID_ARGUMENT;
 }
 if (srdelta) {

  assert(port->ip_srights > 0);

  urefs = IE_BITS_UREFS(bits);





  if (MACH_PORT_UREFS_UNDERFLOW(urefs, srdelta)) {
   ip_unlock(port);
   goto invalid_value;
  }

  if (urefs == MACH_PORT_UREFS_MAX) {




   if (srdelta != (-((mach_port_delta_t)MACH_PORT_UREFS_MAX)))
    srdelta = 0;
  }

  if ((urefs + srdelta) == 0) {
   if (--port->ip_srights == 0) {
    nsrequest = port->ip_nsrequest;
    if (nsrequest != IP_NULL) {
     port->ip_nsrequest = IP_NULL;
     mscount = port->ip_mscount;
    }
   }
   assert(IE_BITS_TYPE(bits) == MACH_PORT_TYPE_SEND_RECEIVE);
   entry->ie_bits = bits &~ (IE_BITS_UREFS_MASK|
            MACH_PORT_TYPE_SEND);
  } else {
   entry->ie_bits = bits + srdelta;
  }
 }






 bits = entry->ie_bits;
 if (bits & MACH_PORT_TYPE_SEND) {
  assert(IE_BITS_UREFS(bits) > 0);
  assert(IE_BITS_UREFS(bits) <= MACH_PORT_UREFS_MAX);

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

 if (nsrequest != IP_NULL)
  ipc_notify_no_senders(nsrequest, mscount);

 ipc_port_destroy(port);

 if (request != IP_NULL)
  ipc_notify_port_deleted(request, name);

 return KERN_SUCCESS;

    invalid_value:
 is_write_unlock(space);
 mach_port_guard_exception(name, 0, 0, kGUARD_EXC_INVALID_VALUE);
 return KERN_INVALID_VALUE;
}
