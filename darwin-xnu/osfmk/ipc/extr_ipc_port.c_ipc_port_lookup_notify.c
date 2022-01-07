
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ mach_port_name_t ;
typedef scalar_t__ ipc_space_t ;
typedef TYPE_1__* ipc_port_t ;
typedef TYPE_2__* ipc_entry_t ;
struct TYPE_13__ {int ie_bits; scalar_t__ ie_object; } ;
struct TYPE_12__ {scalar_t__ ip_receiver_name; scalar_t__ ip_receiver; int ip_sorights; } ;


 TYPE_2__* IE_NULL ;
 TYPE_1__* IP_NULL ;
 int MACH_PORT_TYPE_RECEIVE ;
 int __IGNORE_WCASTALIGN (TYPE_1__*) ;
 int assert (int) ;
 int ip_active (TYPE_1__*) ;
 int ip_lock (TYPE_1__*) ;
 int ip_reference (TYPE_1__*) ;
 int ip_unlock (TYPE_1__*) ;
 TYPE_2__* ipc_entry_lookup (scalar_t__,scalar_t__) ;
 int is_active (scalar_t__) ;

ipc_port_t
ipc_port_lookup_notify(
 ipc_space_t space,
 mach_port_name_t name)
{
 ipc_port_t port;
 ipc_entry_t entry;

 assert(is_active(space));

 entry = ipc_entry_lookup(space, name);
 if (entry == IE_NULL)
  return IP_NULL;
 if ((entry->ie_bits & MACH_PORT_TYPE_RECEIVE) == 0)
  return IP_NULL;

 __IGNORE_WCASTALIGN(port = (ipc_port_t) entry->ie_object);
 assert(port != IP_NULL);

 ip_lock(port);
 assert(ip_active(port));
 assert(port->ip_receiver_name == name);
 assert(port->ip_receiver == space);

 ip_reference(port);
 port->ip_sorights++;
 ip_unlock(port);

 return port;
}
