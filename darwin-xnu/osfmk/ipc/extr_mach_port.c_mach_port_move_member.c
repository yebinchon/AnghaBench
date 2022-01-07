
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int mach_port_name_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ ipc_space_t ;
typedef scalar_t__ ipc_pset_t ;
typedef scalar_t__ ipc_port_t ;
typedef TYPE_1__* ipc_entry_t ;
struct TYPE_5__ {int ie_bits; scalar_t__ ie_object; } ;


 TYPE_1__* IE_NULL ;
 scalar_t__ IPS_NULL ;
 scalar_t__ IP_NULL ;
 scalar_t__ IS_NULL ;
 scalar_t__ KERN_INVALID_NAME ;
 scalar_t__ KERN_INVALID_RIGHT ;
 scalar_t__ KERN_INVALID_TASK ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_PORT_DEAD ;
 int MACH_PORT_NULL ;
 int MACH_PORT_TYPE_PORT_SET ;
 int MACH_PORT_TYPE_RECEIVE ;
 int MACH_PORT_VALID (int ) ;
 int WAITQ_DONT_LOCK ;
 int __IGNORE_WCASTALIGN (scalar_t__) ;
 int assert (int) ;
 int ip_active (scalar_t__) ;
 int ip_lock (scalar_t__) ;
 int ip_unlock (scalar_t__) ;
 TYPE_1__* ipc_entry_lookup (scalar_t__,int ) ;
 scalar_t__ ipc_pset_add (scalar_t__,scalar_t__,scalar_t__*,scalar_t__*) ;
 scalar_t__ ipc_pset_lazy_allocate (scalar_t__,int ) ;
 int ipc_pset_remove_from_all (scalar_t__) ;
 scalar_t__ ipc_right_lookup_read (scalar_t__,int ,TYPE_1__**) ;
 int ips_lock (scalar_t__) ;
 int ips_unlock (scalar_t__) ;
 int is_read_unlock (scalar_t__) ;
 int waitq_link_release (scalar_t__) ;
 scalar_t__ waitq_link_reserve (int *) ;
 int waitq_prepost_release_reserve (scalar_t__) ;
 scalar_t__ waitq_prepost_reserve (int *,int,int ) ;

kern_return_t
mach_port_move_member(
 ipc_space_t space,
 mach_port_name_t member,
 mach_port_name_t after)
{
 ipc_entry_t entry;
 ipc_port_t port;
 ipc_pset_t nset;
 kern_return_t kr;
 uint64_t wq_link_id = 0;
 uint64_t wq_reserved_prepost = 0;

 if (space == IS_NULL)
  return KERN_INVALID_TASK;

 if (!MACH_PORT_VALID(member))
  return KERN_INVALID_RIGHT;

 if (after == MACH_PORT_DEAD) {
  return KERN_INVALID_RIGHT;
 } else if (after == MACH_PORT_NULL) {
  wq_link_id = 0;
 } else {
  wq_link_id = waitq_link_reserve(((void*)0));
  wq_reserved_prepost = waitq_prepost_reserve(((void*)0), 10,
                                              WAITQ_DONT_LOCK);
  kr = ipc_pset_lazy_allocate(space, after);
  if (kr != KERN_SUCCESS)
   goto done;
 }

 kr = ipc_right_lookup_read(space, member, &entry);
 if (kr != KERN_SUCCESS)
  goto done;


 if ((entry->ie_bits & MACH_PORT_TYPE_RECEIVE) == 0) {
  is_read_unlock(space);
  kr = KERN_INVALID_RIGHT;
  goto done;
 }

 __IGNORE_WCASTALIGN(port = (ipc_port_t) entry->ie_object);
 assert(port != IP_NULL);

 if (after == MACH_PORT_NULL)
  nset = IPS_NULL;
 else {
  entry = ipc_entry_lookup(space, after);
  if (entry == IE_NULL) {
   is_read_unlock(space);
   kr = KERN_INVALID_NAME;
   goto done;
  }

  if ((entry->ie_bits & MACH_PORT_TYPE_PORT_SET) == 0) {
   is_read_unlock(space);
   kr = KERN_INVALID_RIGHT;
   goto done;
  }

  __IGNORE_WCASTALIGN(nset = (ipc_pset_t) entry->ie_object);
  assert(nset != IPS_NULL);
 }
 ip_lock(port);
 assert(ip_active(port));
 ipc_pset_remove_from_all(port);

 if (nset != IPS_NULL) {
  ips_lock(nset);
  kr = ipc_pset_add(nset, port, &wq_link_id, &wq_reserved_prepost);
  ips_unlock(nset);
 }
 ip_unlock(port);
 is_read_unlock(space);

 done:





 waitq_link_release(wq_link_id);
 waitq_prepost_release_reserve(wq_reserved_prepost);

 return kr;
}
