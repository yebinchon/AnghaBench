
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int mach_port_name_t ;
typedef scalar_t__ mach_msg_type_name_t ;
typedef int ipc_space_t ;
typedef scalar_t__ ipc_port_t ;
typedef scalar_t__ ipc_object_t ;
typedef TYPE_1__* ipc_entry_t ;
typedef int ipc_entry_bits_t ;
struct TYPE_5__ {int ie_bits; scalar_t__ ie_object; } ;


 int IE_BITS_RIGHT_MASK ;
 int IE_BITS_TYPE (int) ;
 scalar_t__ IE_BITS_UREFS (int) ;
 scalar_t__ IO_DEAD ;
 scalar_t__ IP_NULL ;
 scalar_t__ MACH_MSG_TYPE_COPY_SEND ;
 scalar_t__ MACH_MSG_TYPE_MOVE_SEND ;
 scalar_t__ MACH_MSG_TYPE_MOVE_SEND_ONCE ;
 int MACH_PORT_TYPE_DEAD_NAME ;
 int MACH_PORT_TYPE_NONE ;
 int MACH_PORT_TYPE_SEND ;
 scalar_t__ MACH_PORT_UREFS_MAX ;
 int assert (int) ;
 int io_release (scalar_t__) ;
 int ipc_entry_modified (int ,int ,TYPE_1__*) ;
 int ipc_right_check (int ,scalar_t__,int ,TYPE_1__*) ;
 int is_active (int ) ;

void
ipc_right_copyin_undo(
 ipc_space_t space,
 mach_port_name_t name,
 ipc_entry_t entry,
 mach_msg_type_name_t msgt_name,
 ipc_object_t object,
 ipc_port_t soright)
{
 ipc_entry_bits_t bits;

 bits = entry->ie_bits;

 assert(is_active(space));

 assert((msgt_name == MACH_MSG_TYPE_MOVE_SEND) ||
        (msgt_name == MACH_MSG_TYPE_COPY_SEND) ||
        (msgt_name == MACH_MSG_TYPE_MOVE_SEND_ONCE));

 if (soright != IP_NULL) {
  assert((msgt_name == MACH_MSG_TYPE_MOVE_SEND) ||
         (msgt_name == MACH_MSG_TYPE_MOVE_SEND_ONCE));
  assert(IE_BITS_TYPE(bits) == MACH_PORT_TYPE_NONE);
  assert(object != IO_DEAD);

  entry->ie_bits = ((bits &~ IE_BITS_RIGHT_MASK) |
      MACH_PORT_TYPE_DEAD_NAME | 2);

 } else if (IE_BITS_TYPE(bits) == MACH_PORT_TYPE_NONE) {
  assert((msgt_name == MACH_MSG_TYPE_MOVE_SEND) ||
         (msgt_name == MACH_MSG_TYPE_MOVE_SEND_ONCE));

  entry->ie_bits = ((bits &~ IE_BITS_RIGHT_MASK) |
      MACH_PORT_TYPE_DEAD_NAME | 1);
 } else if (IE_BITS_TYPE(bits) == MACH_PORT_TYPE_DEAD_NAME) {
  assert(object == IO_DEAD);
  assert(IE_BITS_UREFS(bits) > 0);

  if (msgt_name != MACH_MSG_TYPE_COPY_SEND) {
   assert(IE_BITS_UREFS(bits) <= MACH_PORT_UREFS_MAX);

   if (IE_BITS_UREFS(bits) < MACH_PORT_UREFS_MAX)
    entry->ie_bits = bits+1;
  }
 } else {
  assert((msgt_name == MACH_MSG_TYPE_MOVE_SEND) ||
         (msgt_name == MACH_MSG_TYPE_COPY_SEND));
  assert(IE_BITS_TYPE(bits) == MACH_PORT_TYPE_SEND);
  assert(object != IO_DEAD);
  assert(entry->ie_object == object);
  assert(IE_BITS_UREFS(bits) > 0);

  if (msgt_name != MACH_MSG_TYPE_COPY_SEND) {
   assert(IE_BITS_UREFS(bits) <= MACH_PORT_UREFS_MAX);

   if (IE_BITS_UREFS(bits) < MACH_PORT_UREFS_MAX)
    entry->ie_bits = bits+1;
  }






  (void) ipc_right_check(space, (ipc_port_t) object,
           name, entry);

 }
 ipc_entry_modified(space, name, entry);


 if (object != IO_DEAD)
  io_release(object);
}
