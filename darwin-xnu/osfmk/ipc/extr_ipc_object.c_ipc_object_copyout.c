
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct knote {int dummy; } ;
typedef int mach_port_name_t ;
typedef int mach_msg_type_name_t ;
typedef scalar_t__ kern_return_t ;
typedef int ipc_space_t ;
typedef int ipc_port_t ;
typedef scalar_t__ ipc_object_t ;
typedef TYPE_1__* ipc_entry_t ;
typedef int boolean_t ;
struct TYPE_8__ {struct knote* ith_knote; } ;
struct TYPE_7__ {int ie_bits; scalar_t__ ie_object; } ;


 int CAST_MACH_PORT_TO_NAME (scalar_t__) ;
 scalar_t__ IE_BITS_TYPE (int) ;
 scalar_t__ IOT_PORT ;
 scalar_t__ IO_NULL ;
 int IO_VALID (scalar_t__) ;
 scalar_t__ ITH_KNOTE_VALID (struct knote*,int ) ;
 int ITS_SIZE_NONE ;
 scalar_t__ KERN_INVALID_CAPABILITY ;
 scalar_t__ KERN_INVALID_TASK ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_MSG_TYPE_PORT_SEND_ONCE ;
 scalar_t__ MACH_PORT_TYPE_NONE ;
 int MACH_PORT_TYPE_SEND_RECEIVE ;
 int assert (int) ;
 TYPE_6__* current_thread () ;
 int filt_machport_turnstile_prepare_lazily (struct knote*,int ,int ) ;
 int io_active (scalar_t__) ;
 int io_lock (scalar_t__) ;
 scalar_t__ io_otype (scalar_t__) ;
 int io_unlock (scalar_t__) ;
 int ipc_entry_dealloc (int ,int ,TYPE_1__*) ;
 scalar_t__ ipc_entry_get (int ,int *,TYPE_1__**) ;
 scalar_t__ ipc_entry_grow_table (int ,int ) ;
 scalar_t__ ipc_right_copyout (int ,int ,TYPE_1__*,int ,int ,scalar_t__) ;
 scalar_t__ ipc_right_reverse (int ,scalar_t__,int *,TYPE_1__**) ;
 int is_active (int ) ;
 int is_write_lock (int ) ;
 int is_write_unlock (int ) ;

kern_return_t
ipc_object_copyout(
 ipc_space_t space,
 ipc_object_t object,
 mach_msg_type_name_t msgt_name,
 boolean_t overflow,
 mach_port_name_t *namep)
{
 struct knote *kn = current_thread()->ith_knote;
 mach_port_name_t name;
 ipc_entry_t entry;
 kern_return_t kr;

 assert(IO_VALID(object));
 assert(io_otype(object) == IOT_PORT);

 if (ITH_KNOTE_VALID(kn, msgt_name)) {
  filt_machport_turnstile_prepare_lazily(kn,
    msgt_name, (ipc_port_t)object);
 }

 is_write_lock(space);

 for (;;) {
  if (!is_active(space)) {
   is_write_unlock(space);
   return KERN_INVALID_TASK;
  }

  if ((msgt_name != MACH_MSG_TYPE_PORT_SEND_ONCE) &&
      ipc_right_reverse(space, object, &name, &entry)) {


   assert(entry->ie_bits & MACH_PORT_TYPE_SEND_RECEIVE);
   break;
  }

  name = CAST_MACH_PORT_TO_NAME(object);
  kr = ipc_entry_get(space, &name, &entry);
  if (kr != KERN_SUCCESS) {


   kr = ipc_entry_grow_table(space, ITS_SIZE_NONE);
   if (kr != KERN_SUCCESS)
    return kr;

   continue;
  }

  assert(IE_BITS_TYPE(entry->ie_bits) == MACH_PORT_TYPE_NONE);
  assert(entry->ie_object == IO_NULL);

  io_lock(object);
  if (!io_active(object)) {
   io_unlock(object);
   ipc_entry_dealloc(space, name, entry);
   is_write_unlock(space);
   return KERN_INVALID_CAPABILITY;
  }

  entry->ie_object = object;
  break;
 }



 kr = ipc_right_copyout(space, name, entry,
          msgt_name, overflow, object);


 is_write_unlock(space);

 if (kr == KERN_SUCCESS)
  *namep = name;
 return kr;
}
