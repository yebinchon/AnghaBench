
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int mach_port_name_t ;
typedef int ipc_space_t ;
typedef TYPE_1__* ipc_port_t ;
typedef int ipc_object_t ;
typedef TYPE_2__* ipc_entry_t ;
typedef int ipc_entry_bits_t ;
typedef int boolean_t ;
struct TYPE_12__ {int ie_bits; scalar_t__ ie_object; int ie_request; } ;
struct TYPE_11__ {scalar_t__ ip_srights; scalar_t__ ip_sorights; } ;


 int FALSE ;
 int IE_BITS_TYPE (int) ;
 int IE_BITS_TYPE_MASK ;
 int IE_BITS_UREFS (int) ;
 int IE_REQ_NONE ;
 scalar_t__ IO_NULL ;
 int MACH_PORT_TYPE_DEAD_NAME ;
 int MACH_PORT_TYPE_RECEIVE ;
 int MACH_PORT_TYPE_SEND ;
 int MACH_PORT_TYPE_SEND_ONCE ;
 int MACH_PORT_UREFS_MAX ;
 int TRUE ;
 int assert (int) ;
 scalar_t__ ip_active (TYPE_1__*) ;
 int ip_lock (TYPE_1__*) ;
 int ip_unlock (TYPE_1__*) ;
 int ipc_entry_modified (int ,int ,TYPE_2__*) ;
 int ipc_hash_delete (int ,int ,int ,TYPE_2__*) ;
 scalar_t__ ipc_port_request_type (TYPE_1__*,int ,int ) ;
 int is_active (int ) ;

boolean_t
ipc_right_check(
 ipc_space_t space,
 ipc_port_t port,
 mach_port_name_t name,
 ipc_entry_t entry)
{
 ipc_entry_bits_t bits;

 assert(is_active(space));
 assert(port == (ipc_port_t) entry->ie_object);

 ip_lock(port);
 if (ip_active(port))
  return FALSE;



 bits = entry->ie_bits;
 assert((bits & MACH_PORT_TYPE_RECEIVE) == 0);
 assert(IE_BITS_UREFS(bits) > 0);

 if (bits & MACH_PORT_TYPE_SEND) {
                assert(IE_BITS_TYPE(bits) == MACH_PORT_TYPE_SEND);
  assert(IE_BITS_UREFS(bits) > 0);
  assert(port->ip_srights > 0);
  port->ip_srights--;
        } else {
                assert(IE_BITS_TYPE(bits) == MACH_PORT_TYPE_SEND_ONCE);
                assert(IE_BITS_UREFS(bits) == 1);
  assert(port->ip_sorights > 0);
  port->ip_sorights--;
        }
 ip_unlock(port);





 if ((bits & MACH_PORT_TYPE_SEND) != 0) {
  ipc_hash_delete(space, (ipc_object_t)port, name, entry);
 }


 bits = (bits &~ IE_BITS_TYPE_MASK) | MACH_PORT_TYPE_DEAD_NAME;
 if (entry->ie_request != IE_REQ_NONE) {
  if (ipc_port_request_type(port, name, entry->ie_request) != 0) {

   if (IE_BITS_UREFS(bits) < MACH_PORT_UREFS_MAX)
    bits++;
  }
  entry->ie_request = IE_REQ_NONE;
 }
 entry->ie_bits = bits;
 entry->ie_object = IO_NULL;
 ipc_entry_modified(space, name, entry);
 return TRUE;
}
