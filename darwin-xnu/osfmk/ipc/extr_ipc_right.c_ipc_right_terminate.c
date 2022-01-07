
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int mach_port_type_t ;
typedef int mach_port_name_t ;
typedef int mach_port_mscount_t ;
typedef int ipc_space_t ;
typedef int ipc_pset_t ;
typedef TYPE_1__* ipc_port_t ;
typedef TYPE_2__* ipc_entry_t ;
typedef int ipc_entry_bits_t ;
struct TYPE_17__ {int ie_object; int ie_request; int ie_bits; } ;
struct TYPE_16__ {int ip_receiver; int ip_sorights; int ip_receiver_name; int ip_mscount; struct TYPE_16__* ip_nsrequest; int ip_srights; } ;


 int IE_BITS_TYPE (int ) ;
 int IE_REQ_NONE ;
 int IO_NULL ;
 int IPS_NULL ;
 TYPE_1__* IP_NULL ;






 int assert (int) ;
 int ip_active (TYPE_1__*) ;
 int ip_lock (TYPE_1__*) ;
 int ip_release (TYPE_1__*) ;
 int ip_unlock (TYPE_1__*) ;
 int ipc_notify_no_senders (TYPE_1__*,int ) ;
 int ipc_notify_port_deleted (TYPE_1__*,int ) ;
 int ipc_notify_send_once (TYPE_1__*) ;
 int ipc_port_destroy (TYPE_1__*) ;
 int ipc_pset_destroy (int ) ;
 TYPE_1__* ipc_right_request_cancel_macro (int ,TYPE_1__*,int ,TYPE_2__*) ;
 int ips_active (int ) ;
 int ips_lock (int ) ;
 int is_active (int ) ;
 int panic (char*,int) ;

void
ipc_right_terminate(
 ipc_space_t space,
 mach_port_name_t name,
 ipc_entry_t entry)
{
 ipc_entry_bits_t bits;
 mach_port_type_t type;

 bits = entry->ie_bits;
 type = IE_BITS_TYPE(bits);

 assert(!is_active(space));
 switch (type) {
     case 133:
  assert(entry->ie_request == IE_REQ_NONE);
  assert(entry->ie_object == IO_NULL);
  break;

     case 132: {
  ipc_pset_t pset = (ipc_pset_t) entry->ie_object;

  assert(entry->ie_request == IE_REQ_NONE);
  assert(pset != IPS_NULL);

  ips_lock(pset);
  assert(ips_active(pset));
  ipc_pset_destroy(pset);
  break;
     }

     case 130:
     case 131:
     case 128:
     case 129: {
  ipc_port_t port = (ipc_port_t) entry->ie_object;
  ipc_port_t request;
  ipc_port_t nsrequest = IP_NULL;
  mach_port_mscount_t mscount = 0;

  assert(port != IP_NULL);
  ip_lock(port);

  if (!ip_active(port)) {
   ip_unlock(port);
   ip_release(port);
   break;
  }

  request = ipc_right_request_cancel_macro(space, port,
     name, entry);

  if (type & 130) {
   assert(port->ip_srights > 0);
   if (--port->ip_srights == 0
       ) {
    nsrequest = port->ip_nsrequest;
    if (nsrequest != IP_NULL) {
     port->ip_nsrequest = IP_NULL;
     mscount = port->ip_mscount;
    }
   }
  }

  if (type & 131) {
   assert(port->ip_receiver_name == name);
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
  panic("ipc_right_terminate: strange type - 0x%x", type);
 }
}
