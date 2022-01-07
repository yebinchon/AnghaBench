
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int mach_port_name_t ;
typedef scalar_t__ mach_msg_type_name_t ;
typedef int mach_msg_return_t ;
typedef int mach_msg_option_t ;
struct TYPE_22__ {int msgh_voucher_port; void* msgh_remote_port; TYPE_2__* msgh_local_port; scalar_t__ msgh_bits; scalar_t__ msgh_id; } ;
typedef TYPE_1__ mach_msg_header_t ;
typedef scalar_t__ mach_msg_bits_t ;
typedef int kern_return_t ;
typedef int ipc_space_t ;
typedef int ipc_port_timestamp_t ;
typedef TYPE_2__* ipc_port_t ;
typedef void* ipc_object_t ;
typedef TYPE_3__* ipc_kmsg_t ;
typedef TYPE_4__* ipc_entry_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_25__ {int ie_bits; scalar_t__ ie_object; } ;
struct TYPE_24__ {TYPE_1__* ikm_header; TYPE_2__* ikm_voucher; } ;
struct TYPE_23__ {int ip_timestamp; } ;


 void* CAST_MACH_NAME_TO_PORT (int ) ;
 int CAST_MACH_PORT_TO_NAME (TYPE_2__*) ;
 int DBG_FUNC_NONE ;
 int DBG_MACH_IPC ;
 scalar_t__ FALSE ;
 scalar_t__ IE_BITS_TYPE (int) ;
 scalar_t__ IKOT_VOUCHER ;
 scalar_t__ IO_NULL ;
 TYPE_2__* IP_DEAD ;
 void* IP_NULL ;
 scalar_t__ IP_TIMESTAMP_ORDER (int ,int ) ;
 int IP_VALID (TYPE_2__*) ;
 int ITS_SIZE_NONE ;
 int KERNEL_DEBUG_CONSTANT (int,int ,uintptr_t,uintptr_t,int ,int ) ;
 int KERN_SUCCESS ;
 int MACHDBG_CODE (int ,int ) ;
 int MACH_IPC_MSG_RECV ;
 int MACH_IPC_MSG_RECV_VOUCHER_REFUSED ;
 scalar_t__ MACH_MSGH_BITS_LOCAL (scalar_t__) ;
 scalar_t__ MACH_MSGH_BITS_REMOTE (scalar_t__) ;
 scalar_t__ MACH_MSGH_BITS_SET (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ MACH_MSGH_BITS_VOUCHER (scalar_t__) ;
 scalar_t__ MACH_MSGH_BITS_ZERO ;
 int MACH_MSG_IPC_SPACE ;
 int MACH_MSG_SUCCESS ;
 scalar_t__ MACH_MSG_TYPE_MOVE_SEND ;
 scalar_t__ MACH_MSG_TYPE_PORT_SEND_ONCE ;
 int MACH_PORT_DEAD ;
 int MACH_PORT_NULL ;
 scalar_t__ MACH_PORT_TYPE_NONE ;
 int MACH_PORT_TYPE_SEND ;
 int MACH_PORT_TYPE_SEND_RECEIVE ;
 int MACH_RCV_HEADER_ERROR ;
 int MACH_RCV_VOUCHER ;
 scalar_t__ TRUE ;
 int VM_KERNEL_ADDRPERM (uintptr_t) ;
 int assert (int) ;
 int ip_active (TYPE_2__*) ;
 scalar_t__ ip_kotype (TYPE_2__*) ;
 int ip_lock (TYPE_2__*) ;
 int ip_reference (TYPE_2__*) ;
 int ip_release (TYPE_2__*) ;
 int ip_unlock (TYPE_2__*) ;
 int ipc_entries_hold (int ,scalar_t__) ;
 int ipc_entry_claim (int ,int *,TYPE_4__**) ;
 int ipc_entry_grow_table (int ,int ) ;
 int ipc_object_copyout_dest (int ,void*,scalar_t__,int *) ;
 int ipc_port_release_send (TYPE_2__*) ;
 int ipc_port_release_sonce (TYPE_2__*) ;
 int ipc_port_spnotify (TYPE_2__*) ;
 int ipc_right_copyout (int ,int ,TYPE_4__*,scalar_t__,scalar_t__,void*) ;
 scalar_t__ ipc_right_reverse (int ,void*,int *,TYPE_4__**) ;
 int is_active (int ) ;
 int is_read_lock (int ) ;
 int is_read_unlock (int ) ;
 int is_write_lock (int ) ;
 int is_write_unlock (int ) ;
 scalar_t__ unsafe_convert_port_to_voucher (TYPE_2__*) ;

mach_msg_return_t
ipc_kmsg_copyout_header(
 ipc_kmsg_t kmsg,
 ipc_space_t space,
 mach_msg_option_t option)
{
 mach_msg_header_t *msg = kmsg->ikm_header;
 mach_msg_bits_t mbits = msg->msgh_bits;
 ipc_port_t dest = (ipc_port_t) msg->msgh_remote_port;

 assert(IP_VALID(dest));






 ipc_port_spnotify(dest);

    {
 mach_msg_type_name_t dest_type = MACH_MSGH_BITS_REMOTE(mbits);
 mach_msg_type_name_t reply_type = MACH_MSGH_BITS_LOCAL(mbits);
 mach_msg_type_name_t voucher_type = MACH_MSGH_BITS_VOUCHER(mbits);
 ipc_port_t reply = msg->msgh_local_port;
 ipc_port_t release_reply_port = IP_NULL;
 mach_port_name_t dest_name, reply_name;

 ipc_port_t voucher = kmsg->ikm_voucher;
 ipc_port_t release_voucher_port = IP_NULL;
 mach_port_name_t voucher_name;

 uint32_t entries_held = 0;
 boolean_t need_write_lock = FALSE;
 kern_return_t kr;





 if (IP_VALID(reply)) {
  entries_held++;
  need_write_lock = TRUE;
 }
 if (IP_VALID(voucher)) {
  assert(voucher_type == MACH_MSG_TYPE_MOVE_SEND);

  if ((option & MACH_RCV_VOUCHER) != 0)
    entries_held++;
  need_write_lock = TRUE;
 }

 if (need_write_lock) {

  is_write_lock(space);

  while(entries_held) {
   if (!is_active(space)) {
    is_write_unlock(space);
    return (MACH_RCV_HEADER_ERROR|
     MACH_MSG_IPC_SPACE);
   }

   kr = ipc_entries_hold(space, entries_held);
   if (KERN_SUCCESS == kr)
    break;

   kr = ipc_entry_grow_table(space, ITS_SIZE_NONE);
   if (KERN_SUCCESS != kr)
    return(MACH_RCV_HEADER_ERROR|
           MACH_MSG_IPC_SPACE);

  }


  if (IP_VALID(reply)) {
   ipc_entry_t entry;


   if ((reply_type != MACH_MSG_TYPE_PORT_SEND_ONCE) &&
       ipc_right_reverse(space, (ipc_object_t) reply, &reply_name, &entry)) {

    assert(entry->ie_bits & MACH_PORT_TYPE_SEND_RECEIVE);
   } else {
    ip_lock(reply);
    if (!ip_active(reply)) {
     ip_unlock(reply);

     release_reply_port = reply;
     reply = IP_DEAD;
     reply_name = MACH_PORT_DEAD;
     goto done_with_reply;
    }


    assert(entries_held > 0);
    entries_held--;
    ipc_entry_claim(space, &reply_name, &entry);
    assert(IE_BITS_TYPE(entry->ie_bits) == MACH_PORT_TYPE_NONE);
    assert(entry->ie_object == IO_NULL);
    entry->ie_object = (ipc_object_t) reply;
   }


   ip_reference(reply);

   kr = ipc_right_copyout(space, reply_name, entry,
            reply_type, TRUE, (ipc_object_t) reply);
   assert(kr == KERN_SUCCESS);

  } else
   reply_name = CAST_MACH_PORT_TO_NAME(reply);

 done_with_reply:


  if (voucher_type != MACH_MSGH_BITS_ZERO) {
   assert(voucher_type == MACH_MSG_TYPE_MOVE_SEND);

   if (!IP_VALID(voucher)) {
    if ((option & MACH_RCV_VOUCHER) == 0) {
     voucher_type = MACH_MSGH_BITS_ZERO;
    }
    voucher_name = MACH_PORT_NULL;
    goto done_with_voucher;
   }


   kmsg->ikm_voucher = IP_NULL;

   if ((option & MACH_RCV_VOUCHER) != 0) {
    ipc_entry_t entry;

    if (ipc_right_reverse(space, (ipc_object_t) voucher,
            &voucher_name, &entry)) {

     assert(entry->ie_bits & MACH_PORT_TYPE_SEND);
    } else {
     assert(entries_held > 0);
     entries_held--;
     ipc_entry_claim(space, &voucher_name, &entry);
     assert(IE_BITS_TYPE(entry->ie_bits) == MACH_PORT_TYPE_NONE);
     assert(entry->ie_object == IO_NULL);
     entry->ie_object = (ipc_object_t) voucher;
     ip_lock(voucher);
    }


    assert(ip_active(voucher));
    assert(ip_kotype(voucher) == IKOT_VOUCHER);
    kr = ipc_right_copyout(space, voucher_name, entry,
             MACH_MSG_TYPE_MOVE_SEND, TRUE,
             (ipc_object_t) voucher);

   } else {
    voucher_type = MACH_MSGH_BITS_ZERO;
    release_voucher_port = voucher;
    voucher_name = MACH_PORT_NULL;
   }
  } else {
   voucher_name = msg->msgh_voucher_port;
  }

 done_with_voucher:

  ip_lock(dest);
  is_write_unlock(space);

 } else {






  is_read_lock(space);
  if (!is_active(space)) {
   is_read_unlock(space);
   return MACH_RCV_HEADER_ERROR|MACH_MSG_IPC_SPACE;
  }

  ip_lock(dest);
  is_read_unlock(space);

  reply_name = CAST_MACH_PORT_TO_NAME(reply);

  if (voucher_type != MACH_MSGH_BITS_ZERO) {
   assert(voucher_type == MACH_MSG_TYPE_MOVE_SEND);
   if ((option & MACH_RCV_VOUCHER) == 0) {
    voucher_type = MACH_MSGH_BITS_ZERO;
   }
   voucher_name = MACH_PORT_NULL;
  } else {
   voucher_name = msg->msgh_voucher_port;
  }
 }
 if (ip_active(dest)) {
  ipc_object_copyout_dest(space, (ipc_object_t) dest,
     dest_type, &dest_name);


 } else {
  ipc_port_timestamp_t timestamp;

  timestamp = dest->ip_timestamp;
  ip_unlock(dest);
  ip_release(dest);

  if (IP_VALID(reply)) {
   ip_lock(reply);
   if (ip_active(reply) ||
       IP_TIMESTAMP_ORDER(timestamp,
            reply->ip_timestamp))
    dest_name = MACH_PORT_DEAD;
   else
    dest_name = MACH_PORT_NULL;
   ip_unlock(reply);
  } else
   dest_name = MACH_PORT_DEAD;
 }

 if (IP_VALID(reply))
  ip_release(reply);

 if (IP_VALID(release_reply_port)) {
  if (reply_type == MACH_MSG_TYPE_PORT_SEND_ONCE)
   ipc_port_release_sonce(release_reply_port);
  else
   ipc_port_release_send(release_reply_port);
 }

 if (IP_VALID(release_voucher_port))
  ipc_port_release_send(release_voucher_port);


 if ((option & MACH_RCV_VOUCHER) != 0) {
     KERNEL_DEBUG_CONSTANT(MACHDBG_CODE(DBG_MACH_IPC, MACH_IPC_MSG_RECV) | DBG_FUNC_NONE,
      VM_KERNEL_ADDRPERM((uintptr_t)kmsg),
      (uintptr_t)kmsg->ikm_header->msgh_bits,
      (uintptr_t)kmsg->ikm_header->msgh_id,
      VM_KERNEL_ADDRPERM((uintptr_t)unsafe_convert_port_to_voucher(voucher)),
      0);
 } else {
     KERNEL_DEBUG_CONSTANT(MACHDBG_CODE(DBG_MACH_IPC, MACH_IPC_MSG_RECV_VOUCHER_REFUSED) | DBG_FUNC_NONE,
      VM_KERNEL_ADDRPERM((uintptr_t)kmsg),
      (uintptr_t)kmsg->ikm_header->msgh_bits,
      (uintptr_t)kmsg->ikm_header->msgh_id,
      VM_KERNEL_ADDRPERM((uintptr_t)unsafe_convert_port_to_voucher(voucher)),
      0);
 }

 msg->msgh_bits = MACH_MSGH_BITS_SET(reply_type, dest_type,
         voucher_type, mbits);
 msg->msgh_local_port = CAST_MACH_NAME_TO_PORT(dest_name);
 msg->msgh_remote_port = CAST_MACH_NAME_TO_PORT(reply_name);
 msg->msgh_voucher_port = voucher_name;
    }

    return MACH_MSG_SUCCESS;
}
