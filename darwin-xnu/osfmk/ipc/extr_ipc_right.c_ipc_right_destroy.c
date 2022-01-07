
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int uint64_t ;
typedef int mach_port_type_t ;
typedef int mach_port_name_t ;
typedef int mach_port_mscount_t ;
typedef int kern_return_t ;
typedef int ipc_space_t ;
typedef int ipc_pset_t ;
typedef TYPE_1__* ipc_port_t ;
typedef int ipc_object_t ;
typedef TYPE_2__* ipc_entry_t ;
typedef int ipc_entry_bits_t ;
typedef int boolean_t ;
struct TYPE_19__ {void* ie_object; int ie_request; int ie_bits; } ;
struct TYPE_18__ {int ip_receiver; int ip_sorights; int ip_mscount; struct TYPE_18__* ip_nsrequest; int ip_srights; int ip_context; int ip_guarded; } ;


 int IE_BITS_TYPE (int ) ;
 int IE_BITS_TYPE_MASK ;
 int IE_REQ_NONE ;
 void* IO_NULL ;
 int IPS_NULL ;
 TYPE_1__* IP_NULL ;
 int KERN_INVALID_RIGHT ;
 int KERN_SUCCESS ;






 int assert (int) ;
 int ip_active (TYPE_1__*) ;
 int ip_lock (TYPE_1__*) ;
 int ip_release (TYPE_1__*) ;
 int ip_unlock (TYPE_1__*) ;
 int ipc_entry_dealloc (int ,int ,TYPE_2__*) ;
 int ipc_hash_delete (int ,int ,int ,TYPE_2__*) ;
 int ipc_notify_no_senders (TYPE_1__*,int ) ;
 int ipc_notify_port_deleted (TYPE_1__*,int ) ;
 int ipc_notify_send_once (TYPE_1__*) ;
 int ipc_port_destroy (TYPE_1__*) ;
 int ipc_pset_destroy (int ) ;
 TYPE_1__* ipc_right_request_cancel_macro (int ,TYPE_1__*,int ,TYPE_2__*) ;
 int ips_active (int ) ;
 int ips_lock (int ) ;
 int is_active (int ) ;
 int is_write_unlock (int ) ;
 int kGUARD_EXC_DESTROY ;
 int mach_port_guard_exception (int ,int ,int ,int ) ;
 int panic (char*) ;

kern_return_t
ipc_right_destroy(
 ipc_space_t space,
 mach_port_name_t name,
 ipc_entry_t entry,
 boolean_t check_guard,
 uint64_t guard)
{
 ipc_entry_bits_t bits;
 mach_port_type_t type;

 bits = entry->ie_bits;
 entry->ie_bits &= ~IE_BITS_TYPE_MASK;
 type = IE_BITS_TYPE(bits);

 assert(is_active(space));

 switch (type) {
     case 133:
  assert(entry->ie_request == IE_REQ_NONE);
  assert(entry->ie_object == IO_NULL);

  ipc_entry_dealloc(space, name, entry);
  is_write_unlock(space);
  break;

     case 132: {
  ipc_pset_t pset = (ipc_pset_t) entry->ie_object;

  assert(entry->ie_request == IE_REQ_NONE);
  assert(pset != IPS_NULL);

  entry->ie_object = IO_NULL;
  ipc_entry_dealloc(space, name, entry);

  ips_lock(pset);
  is_write_unlock(space);

  assert(ips_active(pset));
  ipc_pset_destroy(pset);
  break;
     }

     case 130:
     case 131:
     case 128:
     case 129: {
  ipc_port_t port = (ipc_port_t) entry->ie_object;
  ipc_port_t nsrequest = IP_NULL;
  mach_port_mscount_t mscount = 0;
  ipc_port_t request;

  assert(port != IP_NULL);

  if (type == 130)
   ipc_hash_delete(space, (ipc_object_t) port,
     name, entry);

  ip_lock(port);

  if (!ip_active(port)) {
   assert((type & 131) == 0);
   ip_unlock(port);
   entry->ie_request = IE_REQ_NONE;
   entry->ie_object = IO_NULL;
   ipc_entry_dealloc(space, name, entry);
   is_write_unlock(space);
   ip_release(port);
   break;
  }


  if ((type & 131) &&
      (check_guard) && (port->ip_guarded) &&
      (guard != port->ip_context)) {

   uint64_t portguard = port->ip_context;
   ip_unlock(port);
   is_write_unlock(space);

   mach_port_guard_exception(name, 0, portguard, kGUARD_EXC_DESTROY);
   return KERN_INVALID_RIGHT;
  }


  request = ipc_right_request_cancel_macro(space, port, name, entry);

  entry->ie_object = IO_NULL;
  ipc_entry_dealloc(space, name, entry);
  is_write_unlock(space);

  if (type & 130) {
   assert(port->ip_srights > 0);
   if (--port->ip_srights == 0) {
    nsrequest = port->ip_nsrequest;
    if (nsrequest != IP_NULL) {
     port->ip_nsrequest = IP_NULL;
     mscount = port->ip_mscount;
    }
   }
  }

  if (type & 131) {
   assert(ip_active(port));
   assert(port->ip_receiver == space);

   ipc_port_destroy(port);

  } else if (type & 129) {
   assert(port->ip_sorights > 0);
   ip_unlock(port);

   ipc_notify_send_once(port);
  } else {
   assert(port->ip_receiver != space);

   ip_unlock(port);
   ip_release(port);
  }

  if (nsrequest != IP_NULL)
   ipc_notify_no_senders(nsrequest, mscount);

  if (request != IP_NULL)
   ipc_notify_port_deleted(request, name);


  break;
     }

     default:
  panic("ipc_right_destroy: strange type");
 }

 return KERN_SUCCESS;
}
