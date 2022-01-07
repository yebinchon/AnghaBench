
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int mach_port_name_t ;
typedef scalar_t__ mach_msg_type_name_t ;
typedef scalar_t__ kern_return_t ;
typedef int ipc_space_t ;
typedef scalar_t__ ipc_port_t ;
typedef scalar_t__ ipc_object_t ;
typedef TYPE_1__* ipc_entry_t ;
struct TYPE_6__ {int ie_bits; } ;


 int FALSE ;
 int IO_VALID (scalar_t__) ;
 scalar_t__ IP_NULL ;
 scalar_t__ KERN_INVALID_CAPABILITY ;
 scalar_t__ KERN_INVALID_RIGHT ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ MACH_MSG_TYPE_COPY_SEND ;
 scalar_t__ MACH_MSG_TYPE_MAKE_SEND ;
 scalar_t__ MACH_MSG_TYPE_MAKE_SEND_ONCE ;
 scalar_t__ MACH_MSG_TYPE_MOVE_SEND ;
 scalar_t__ MACH_MSG_TYPE_MOVE_SEND_ONCE ;
 int MACH_MSG_TYPE_PORT_ANY_SEND (scalar_t__) ;
 int MACH_PORT_TYPE_RECEIVE ;
 int assert (int) ;
 int ipc_port_copy_send (scalar_t__) ;
 scalar_t__ ipc_right_copyin (int ,int ,TYPE_1__*,scalar_t__,int ,scalar_t__*,scalar_t__*,scalar_t__*,int*) ;
 int ipc_right_copyin_check (int ,int ,TYPE_1__*,scalar_t__) ;
 scalar_t__ ipc_right_copyin_two_move_sends (int ,int ,TYPE_1__*,scalar_t__*,scalar_t__*,scalar_t__*) ;

kern_return_t
ipc_right_copyin_two(
 ipc_space_t space,
 mach_port_name_t name,
 ipc_entry_t entry,
 mach_msg_type_name_t msgt_one,
 mach_msg_type_name_t msgt_two,
 ipc_object_t *objectp,
 ipc_port_t *sorightp,
 ipc_port_t *releasep)
{
 kern_return_t kr;
 int assertcnt = 0;

 assert(MACH_MSG_TYPE_PORT_ANY_SEND(msgt_one));
 assert(MACH_MSG_TYPE_PORT_ANY_SEND(msgt_two));





 if (!ipc_right_copyin_check(space, name, entry, msgt_two)) {
  return KERN_INVALID_CAPABILITY;
 }
 if (msgt_one == MACH_MSG_TYPE_MOVE_SEND_ONCE ||
     msgt_two == MACH_MSG_TYPE_MOVE_SEND_ONCE) {
  return KERN_INVALID_RIGHT;
 }

 if ((msgt_one == MACH_MSG_TYPE_MAKE_SEND) ||
     (msgt_one == MACH_MSG_TYPE_MAKE_SEND_ONCE) ||
     (msgt_two == MACH_MSG_TYPE_MAKE_SEND) ||
     (msgt_two == MACH_MSG_TYPE_MAKE_SEND_ONCE)) {
  ipc_object_t object_two;

  kr = ipc_right_copyin(space, name, entry,
          msgt_one, FALSE,
          objectp, sorightp, releasep,
          &assertcnt);
  assert(assertcnt == 0);
  if (kr != KERN_SUCCESS) {
   return kr;
  }

  assert(IO_VALID(*objectp));
  assert(*sorightp == IP_NULL);
  assert(*releasep == IP_NULL);







  kr = ipc_right_copyin(space, name, entry,
          msgt_two, FALSE,
          &object_two, sorightp, releasep,
          &assertcnt);
  assert(assertcnt == 0);
  assert(kr == KERN_SUCCESS);
  assert(*sorightp == IP_NULL);
  assert(*releasep == IP_NULL);
  assert(object_two == *objectp);
  assert(entry->ie_bits & MACH_PORT_TYPE_RECEIVE);

 } else if ((msgt_one == MACH_MSG_TYPE_MOVE_SEND) &&
     (msgt_two == MACH_MSG_TYPE_MOVE_SEND)) {





  kr = ipc_right_copyin_two_move_sends(space, name, entry,
           objectp, sorightp,
           releasep);
  if (kr != KERN_SUCCESS) {
   return kr;
  }

 } else {
  mach_msg_type_name_t msgt_name;
  if (msgt_one == MACH_MSG_TYPE_MOVE_SEND ||
      msgt_two == MACH_MSG_TYPE_MOVE_SEND) {
   msgt_name = MACH_MSG_TYPE_MOVE_SEND;
  } else {
   msgt_name = MACH_MSG_TYPE_COPY_SEND;
  }

  kr = ipc_right_copyin(space, name, entry,
          msgt_name, FALSE,
          objectp, sorightp, releasep,
          &assertcnt);
  assert(assertcnt == 0);
  if (kr != KERN_SUCCESS) {
   return kr;
  }






  (void)ipc_port_copy_send((ipc_port_t)*objectp);
 }

 return KERN_SUCCESS;
}
