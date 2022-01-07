
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_18__ ;
typedef struct TYPE_19__ TYPE_17__ ;


struct knote {int dummy; } ;
typedef scalar_t__ mach_port_name_t ;
typedef int mach_msg_type_name_t ;
typedef scalar_t__ kern_return_t ;
typedef TYPE_1__* ipc_space_t ;
typedef TYPE_2__* ipc_port_t ;
typedef scalar_t__ ipc_object_t ;
typedef scalar_t__ ipc_importance_task_t ;
typedef TYPE_3__* ipc_entry_t ;
typedef int boolean_t ;
struct TYPE_23__ {int ie_bits; scalar_t__ ie_object; } ;
struct TYPE_22__ {int ip_impcount; scalar_t__ ip_tempowner; } ;
struct TYPE_21__ {TYPE_18__* is_task; } ;
struct TYPE_20__ {scalar_t__ task_imp_base; } ;
struct TYPE_19__ {struct knote* ith_knote; } ;


 scalar_t__ IE_BITS_TYPE (int) ;
 scalar_t__ IIT_NULL ;
 scalar_t__ IOT_PORT ;
 scalar_t__ IO_NULL ;
 int IO_VALID (scalar_t__) ;
 scalar_t__ ITH_KNOTE_VALID (struct knote*,int ) ;
 scalar_t__ KERN_INVALID_CAPABILITY ;
 scalar_t__ KERN_NAME_EXISTS ;
 scalar_t__ KERN_RIGHT_EXISTS ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_MSG_TYPE_PORT_RECEIVE ;
 int MACH_MSG_TYPE_PORT_SEND_ONCE ;
 scalar_t__ MACH_PORT_TYPE_NONE ;
 int MACH_PORT_TYPE_SEND_RECEIVE ;
 TYPE_18__* TASK_NULL ;
 int assert (int) ;
 TYPE_17__* current_thread () ;
 int filt_machport_turnstile_prepare_lazily (struct knote*,int ,TYPE_2__*) ;
 int io_active (scalar_t__) ;
 int io_lock (scalar_t__) ;
 scalar_t__ io_otype (scalar_t__) ;
 int io_unlock (scalar_t__) ;
 scalar_t__ ipc_entry_alloc_name (TYPE_1__*,scalar_t__,TYPE_3__**) ;
 int ipc_entry_dealloc (TYPE_1__*,scalar_t__,TYPE_3__*) ;
 int ipc_importance_task_hold_internal_assertion (scalar_t__,int) ;
 scalar_t__ ipc_importance_task_is_any_receiver_type (scalar_t__) ;
 int ipc_importance_task_reference (scalar_t__) ;
 int ipc_importance_task_release (scalar_t__) ;
 scalar_t__ ipc_right_copyout (TYPE_1__*,scalar_t__,TYPE_3__*,int ,int ,scalar_t__) ;
 scalar_t__ ipc_right_inuse (TYPE_1__*,scalar_t__,TYPE_3__*) ;
 scalar_t__ ipc_right_reverse (TYPE_1__*,scalar_t__,scalar_t__*,TYPE_3__**) ;
 int is_write_unlock (TYPE_1__*) ;

kern_return_t
ipc_object_copyout_name(
 ipc_space_t space,
 ipc_object_t object,
 mach_msg_type_name_t msgt_name,
 boolean_t overflow,
 mach_port_name_t name)
{
 mach_port_name_t oname;
 ipc_entry_t oentry;
 ipc_entry_t entry;
 kern_return_t kr;
 struct knote *kn = current_thread()->ith_knote;






 assert(IO_VALID(object));
 assert(io_otype(object) == IOT_PORT);

 if (ITH_KNOTE_VALID(kn, msgt_name)) {
  filt_machport_turnstile_prepare_lazily(kn,
    msgt_name, (ipc_port_t)object);
 }

 kr = ipc_entry_alloc_name(space, name, &entry);
 if (kr != KERN_SUCCESS)
  return kr;


 if ((msgt_name != MACH_MSG_TYPE_PORT_SEND_ONCE) &&
     ipc_right_reverse(space, object, &oname, &oentry)) {


  if (name != oname) {
   io_unlock(object);

   if (IE_BITS_TYPE(entry->ie_bits) == MACH_PORT_TYPE_NONE)
    ipc_entry_dealloc(space, name, entry);

   is_write_unlock(space);
   return KERN_RIGHT_EXISTS;
  }

  assert(entry == oentry);
  assert(entry->ie_bits & MACH_PORT_TYPE_SEND_RECEIVE);
 } else {
  if (ipc_right_inuse(space, name, entry))
   return KERN_NAME_EXISTS;

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
 }
 kr = ipc_right_copyout(space, name, entry,
          msgt_name, overflow, object);


 is_write_unlock(space);
 return kr;
}
