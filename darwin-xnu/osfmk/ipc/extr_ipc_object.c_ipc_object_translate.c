
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mach_port_right_t ;
typedef int mach_port_name_t ;
typedef scalar_t__ kern_return_t ;
typedef int ipc_space_t ;
typedef scalar_t__ ipc_object_t ;
typedef TYPE_1__* ipc_entry_t ;
struct TYPE_3__ {int ie_bits; scalar_t__ ie_object; } ;


 scalar_t__ IO_NULL ;
 scalar_t__ KERN_INVALID_RIGHT ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_PORT_TYPE (int ) ;
 int MACH_PORT_TYPE_NONE ;
 int assert (int) ;
 int io_lock (scalar_t__) ;
 scalar_t__ ipc_right_lookup_read (int ,int ,TYPE_1__**) ;
 int is_read_unlock (int ) ;

kern_return_t
ipc_object_translate(
 ipc_space_t space,
 mach_port_name_t name,
 mach_port_right_t right,
 ipc_object_t *objectp)
{
 ipc_entry_t entry;
 ipc_object_t object;
 kern_return_t kr;

 kr = ipc_right_lookup_read(space, name, &entry);
 if (kr != KERN_SUCCESS)
  return kr;


 if ((entry->ie_bits & MACH_PORT_TYPE(right)) == MACH_PORT_TYPE_NONE) {
  is_read_unlock(space);
  return KERN_INVALID_RIGHT;
 }

 object = entry->ie_object;
 assert(object != IO_NULL);

 io_lock(object);
 is_read_unlock(space);

 *objectp = object;
 return KERN_SUCCESS;
}
