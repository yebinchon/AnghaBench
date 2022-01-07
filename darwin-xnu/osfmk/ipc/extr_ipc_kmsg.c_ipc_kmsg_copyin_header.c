
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;


typedef scalar_t__ mach_port_name_t ;
typedef scalar_t__ mach_msg_type_name_t ;
typedef int mach_msg_return_t ;
typedef int mach_msg_priority_t ;
typedef int mach_msg_option_t ;
struct TYPE_28__ {int msgh_bits; scalar_t__ msgh_voucher_port; TYPE_2__* msgh_local_port; TYPE_2__* msgh_remote_port; } ;
typedef TYPE_1__ mach_msg_header_t ;
typedef int mach_msg_bits_t ;
typedef scalar_t__ kern_return_t ;
typedef int ipc_space_t ;
typedef TYPE_2__* ipc_port_t ;
typedef scalar_t__ ipc_object_t ;
typedef TYPE_3__* ipc_kmsg_t ;
typedef TYPE_4__* ipc_entry_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_31__ {int ie_bits; scalar_t__ ie_request; int ie_object; } ;
struct TYPE_30__ {TYPE_2__* ikm_voucher; TYPE_1__* ikm_header; } ;
struct TYPE_29__ {scalar_t__ ip_receiver; } ;


 scalar_t__ CAST_MACH_NAME_TO_PORT (scalar_t__) ;
 scalar_t__ CAST_MACH_PORT_TO_NAME (TYPE_2__*) ;
 scalar_t__ FALSE ;
 scalar_t__ IE_BITS_TYPE (int) ;
 TYPE_4__* IE_NULL ;
 scalar_t__ IE_REQ_NONE ;
 scalar_t__ IKOT_VOUCHER ;
 scalar_t__ IO_NULL ;
 int IO_VALID (scalar_t__) ;
 int IPID_OPTION_SENDPOSSIBLE ;
 TYPE_2__* IP_NULL ;
 int IP_VALID (TYPE_2__*) ;
 scalar_t__ KERN_INVALID_CAPABILITY ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ MACH_MSGH_BITS_LOCAL (int) ;
 scalar_t__ MACH_MSGH_BITS_REMOTE (int) ;
 int MACH_MSGH_BITS_SET (scalar_t__,scalar_t__,scalar_t__,int) ;
 int MACH_MSGH_BITS_USER ;
 scalar_t__ MACH_MSGH_BITS_VOUCHER (int) ;
 scalar_t__ MACH_MSGH_BITS_ZERO ;
 int MACH_MSG_SUCCESS ;
 scalar_t__ MACH_MSG_TYPE_COPY_SEND ;
 scalar_t__ MACH_MSG_TYPE_MAKE_SEND ;
 scalar_t__ MACH_MSG_TYPE_MAKE_SEND_ONCE ;
 scalar_t__ MACH_MSG_TYPE_MOVE_SEND ;
 scalar_t__ MACH_MSG_TYPE_MOVE_SEND_ONCE ;
 int MACH_MSG_TYPE_PORT_ANY_SEND (scalar_t__) ;
 scalar_t__ MACH_MSG_TYPE_PORT_SEND_ONCE ;
 scalar_t__ MACH_PORT_DEAD ;
 scalar_t__ MACH_PORT_NULL ;
 scalar_t__ MACH_PORT_TYPE_NONE ;
 int MACH_PORT_TYPE_SEND ;
 scalar_t__ MACH_PORT_VALID (scalar_t__) ;
 int MACH_SEND_ALWAYS ;
 int MACH_SEND_INVALID_DEST ;
 int MACH_SEND_INVALID_HEADER ;
 int MACH_SEND_INVALID_REPLY ;
 int MACH_SEND_INVALID_VOUCHER ;
 int MACH_SEND_KERNEL ;
 int MACH_SEND_NOTIFY ;
 scalar_t__ TRUE ;
 int assert (int) ;
 scalar_t__ io_kotype (int ) ;
 int ip_active (TYPE_2__*) ;
 scalar_t__ ip_full (TYPE_2__*) ;
 int ip_lock (TYPE_2__*) ;
 int ip_release (TYPE_2__*) ;
 int ip_unlock (TYPE_2__*) ;
 int ipc_entry_dealloc (int ,scalar_t__,TYPE_4__*) ;
 TYPE_4__* ipc_entry_lookup (int ,scalar_t__) ;
 int ipc_kmsg_set_qos (TYPE_3__*,int,int ) ;
 int ipc_notify_port_deleted (TYPE_2__*,scalar_t__) ;
 scalar_t__ ipc_object_copyin_type (scalar_t__) ;
 scalar_t__ ipc_port_importance_delta (TYPE_2__*,int ,int) ;
 scalar_t__ ipc_port_request_sparm (TYPE_2__*,scalar_t__,scalar_t__,int,int ) ;
 scalar_t__ ipc_right_copyin (int ,scalar_t__,TYPE_4__*,scalar_t__,scalar_t__,scalar_t__*,TYPE_2__**,TYPE_2__**,int*) ;
 int ipc_right_copyin_check (int ,scalar_t__,TYPE_4__*,scalar_t__) ;
 scalar_t__ ipc_right_copyin_two (int ,scalar_t__,TYPE_4__*,scalar_t__,scalar_t__,scalar_t__*,TYPE_2__**,TYPE_2__**) ;
 scalar_t__ ipc_space_kernel ;
 int is_active (int ) ;
 int is_write_lock (int ) ;
 int is_write_unlock (int ) ;
 int kGUARD_EXC_SEND_INVALID_REPLY ;
 int kGUARD_EXC_SEND_INVALID_VOUCHER ;
 int mach_port_guard_exception (scalar_t__,int ,int ,int ) ;

mach_msg_return_t
ipc_kmsg_copyin_header(
 ipc_kmsg_t kmsg,
 ipc_space_t space,
 mach_msg_priority_t override,
 mach_msg_option_t *optionp)
{
 mach_msg_header_t *msg = kmsg->ikm_header;
 mach_msg_bits_t mbits = msg->msgh_bits & MACH_MSGH_BITS_USER;
 mach_port_name_t dest_name = CAST_MACH_PORT_TO_NAME(msg->msgh_remote_port);
 mach_port_name_t reply_name = CAST_MACH_PORT_TO_NAME(msg->msgh_local_port);
 mach_port_name_t voucher_name = MACH_PORT_NULL;
 kern_return_t kr;

 mach_msg_type_name_t dest_type = MACH_MSGH_BITS_REMOTE(mbits);
 mach_msg_type_name_t reply_type = MACH_MSGH_BITS_LOCAL(mbits);
 mach_msg_type_name_t voucher_type = MACH_MSGH_BITS_VOUCHER(mbits);
 ipc_object_t dest_port = IO_NULL;
 ipc_object_t reply_port = IO_NULL;
 ipc_port_t dest_soright = IP_NULL;
 ipc_port_t reply_soright = IP_NULL;
 ipc_port_t voucher_soright = IP_NULL;
 ipc_port_t release_port = IP_NULL;
 ipc_port_t voucher_port = IP_NULL;
 ipc_port_t voucher_release_port = IP_NULL;
 ipc_entry_t dest_entry = IE_NULL;
 ipc_entry_t reply_entry = IE_NULL;
 ipc_entry_t voucher_entry = IE_NULL;

 int assertcnt = 0;




 if ((mbits != msg->msgh_bits) ||
     (!MACH_MSG_TYPE_PORT_ANY_SEND(dest_type)) ||
     ((reply_type == 0) ?
      (reply_name != MACH_PORT_NULL) :
      !MACH_MSG_TYPE_PORT_ANY_SEND(reply_type)))
  return MACH_SEND_INVALID_HEADER;

 if (!MACH_PORT_VALID(dest_name))
  return MACH_SEND_INVALID_DEST;

 is_write_lock(space);
 if (!is_active(space)) {
  is_write_unlock(space);
  return MACH_SEND_INVALID_DEST;
 }







 if (voucher_type != MACH_MSGH_BITS_ZERO) {

  voucher_name = msg->msgh_voucher_port;

  if (voucher_name == MACH_PORT_DEAD ||
      (voucher_type != MACH_MSG_TYPE_MOVE_SEND &&
       voucher_type != MACH_MSG_TYPE_COPY_SEND)) {
   is_write_unlock(space);
   if ((*optionp & MACH_SEND_KERNEL) == 0) {
    mach_port_guard_exception(voucher_name, 0, 0, kGUARD_EXC_SEND_INVALID_VOUCHER);
   }
   return MACH_SEND_INVALID_VOUCHER;
  }

  if (voucher_name != MACH_PORT_NULL) {
   voucher_entry = ipc_entry_lookup(space, voucher_name);
   if (voucher_entry == IE_NULL ||
       (voucher_entry->ie_bits & MACH_PORT_TYPE_SEND) == 0 ||
       io_kotype(voucher_entry->ie_object) != IKOT_VOUCHER) {
    is_write_unlock(space);
    if ((*optionp & MACH_SEND_KERNEL) == 0) {
     mach_port_guard_exception(voucher_name, 0, 0, kGUARD_EXC_SEND_INVALID_VOUCHER);
    }
    return MACH_SEND_INVALID_VOUCHER;
   }
  } else {
   voucher_type = MACH_MSG_TYPE_MOVE_SEND;
  }
 }






 if (dest_name == voucher_name) {






  dest_entry = voucher_entry;
  if (dest_entry == IE_NULL) {
   goto invalid_dest;
  }






  if (MACH_PORT_VALID(reply_name)) {
   assert(reply_type != 0);


   if (voucher_name == reply_name) {
    goto invalid_reply;
   }
   reply_entry = ipc_entry_lookup(space, reply_name);
   if (reply_entry == IE_NULL) {
    goto invalid_reply;
   }
   assert(dest_entry != reply_entry);
   if (!ipc_right_copyin_check(space, reply_name, reply_entry, reply_type)) {
    goto invalid_reply;
   }
  }
  kr = ipc_right_copyin_two(space, dest_name, dest_entry,
       dest_type, voucher_type,
       &dest_port, &dest_soright,
       &release_port);
  if (kr != KERN_SUCCESS) {
   assert(kr != KERN_INVALID_CAPABILITY);
   goto invalid_dest;
  }
  voucher_port = (ipc_port_t)dest_port;






  assert(dest_type != MACH_MSG_TYPE_MAKE_SEND);
  assert(dest_type != MACH_MSG_TYPE_MAKE_SEND_ONCE);
  assert(dest_type != MACH_MSG_TYPE_MOVE_SEND_ONCE);




  if (reply_entry != IE_NULL) {
   kr = ipc_right_copyin(space, reply_name, reply_entry,
           reply_type, TRUE,
           &reply_port, &reply_soright,
           &release_port, &assertcnt);
   assert(assertcnt == 0);
   assert(kr == KERN_SUCCESS);
  }

 } else {
  if (dest_name == reply_name) {







   dest_entry = ipc_entry_lookup(space, dest_name);
   if (dest_entry == IE_NULL) {
    goto invalid_dest;
   }
   reply_entry = dest_entry;
   assert(reply_type != 0);





   kr = ipc_right_copyin_two(space, dest_name, dest_entry,
        dest_type, reply_type,
        &dest_port, &dest_soright,
        &release_port);
   if (kr == KERN_INVALID_CAPABILITY) {
    goto invalid_reply;
   } else if (kr != KERN_SUCCESS) {
    goto invalid_dest;
   }
   reply_port = dest_port;


  } else {
   dest_entry = ipc_entry_lookup(space, dest_name);
   if (dest_entry == IE_NULL) {
    goto invalid_dest;
   }
   assert(dest_entry != voucher_entry);




   if (MACH_PORT_VALID(reply_name)) {
    if (reply_name == voucher_name) {
     goto invalid_reply;
    }
    reply_entry = ipc_entry_lookup(space, reply_name);
    if (reply_entry == IE_NULL) {
     goto invalid_reply;
    }
    assert(dest_entry != reply_entry);
    assert(reply_type != 0);

    if (!ipc_right_copyin_check(space, reply_name, reply_entry, reply_type)) {
     goto invalid_reply;
    }
   }




   kr = ipc_right_copyin(space, dest_name, dest_entry,
           dest_type, FALSE,
           &dest_port, &dest_soright,
           &release_port, &assertcnt);
   assert(assertcnt == 0);
   if (kr != KERN_SUCCESS) {
    goto invalid_dest;
   }
   assert(IO_VALID(dest_port));
   assert(!IP_VALID(release_port));





   if (MACH_PORT_VALID(reply_name)) {
    kr = ipc_right_copyin(space, reply_name, reply_entry,
            reply_type, TRUE,
            &reply_port, &reply_soright,
            &release_port, &assertcnt);
    assert(assertcnt == 0);
    assert(kr == KERN_SUCCESS);
   } else {

    reply_port = (ipc_object_t)CAST_MACH_NAME_TO_PORT(reply_name);
   }
  }





  if (IE_NULL != voucher_entry) {
   kr = ipc_right_copyin(space, voucher_name, voucher_entry,
           voucher_type, FALSE,
           (ipc_object_t *)&voucher_port,
           &voucher_soright,
           &voucher_release_port,
           &assertcnt);
   assert(assertcnt == 0);
   assert(KERN_SUCCESS == kr);
   assert(IP_VALID(voucher_port));
   assert(ip_active(voucher_port));
  }
 }
 assert(IE_NULL != dest_entry);
 if (IE_NULL != reply_entry)
  assert(reply_entry != voucher_entry);

 if (IE_BITS_TYPE(dest_entry->ie_bits) == MACH_PORT_TYPE_NONE) {
  ipc_entry_dealloc(space, dest_name, dest_entry);

  if (dest_entry == reply_entry) {
   reply_entry = IE_NULL;
  }

  if (dest_entry == voucher_entry) {
   voucher_entry = IE_NULL;
  }

  dest_entry = IE_NULL;
 }
 if (IE_NULL != reply_entry &&
     IE_BITS_TYPE(reply_entry->ie_bits) == MACH_PORT_TYPE_NONE) {
  ipc_entry_dealloc(space, reply_name, reply_entry);
  reply_entry = IE_NULL;
 }
 if (IE_NULL != voucher_entry &&
     IE_BITS_TYPE(voucher_entry->ie_bits) == MACH_PORT_TYPE_NONE) {
  ipc_entry_dealloc(space, voucher_name, voucher_entry);
  voucher_entry = IE_NULL;
 }

 dest_type = ipc_object_copyin_type(dest_type);
 reply_type = ipc_object_copyin_type(reply_type);







 if (((*optionp & MACH_SEND_NOTIFY) != 0) &&
     dest_type != MACH_MSG_TYPE_PORT_SEND_ONCE &&
     dest_entry != IE_NULL && dest_entry->ie_request != IE_REQ_NONE) {
  ipc_port_t dport = (ipc_port_t)dest_port;

  assert(dport != IP_NULL);
  ip_lock(dport);
  if (ip_active(dport) && dport->ip_receiver != ipc_space_kernel) {
   if (ip_full(dport)) {
    ipc_port_request_sparm(dport, dest_name,
                           dest_entry->ie_request,
                           *optionp,
            override);
    ip_unlock(dport);

   } else {
    *optionp |= MACH_SEND_ALWAYS;
    ip_unlock(dport);
   }
  } else {
   ip_unlock(dport);
  }
 }

 is_write_unlock(space);
 if (dest_soright != IP_NULL) {
  ipc_notify_port_deleted(dest_soright, dest_name);
 }
 if (reply_soright != IP_NULL) {
  ipc_notify_port_deleted(reply_soright, reply_name);
 }
 if (voucher_soright != IP_NULL) {
  ipc_notify_port_deleted(voucher_soright, voucher_name);
 }






 if (IP_VALID(voucher_port)) {

  kmsg->ikm_voucher = voucher_port;
  voucher_type = MACH_MSG_TYPE_MOVE_SEND;
 }

 msg->msgh_bits = MACH_MSGH_BITS_SET(dest_type, reply_type, voucher_type, mbits);
 msg->msgh_remote_port = (ipc_port_t)dest_port;
 msg->msgh_local_port = (ipc_port_t)reply_port;


 ipc_kmsg_set_qos(kmsg, *optionp, override);

 if (release_port != IP_NULL)
  ip_release(release_port);

 if (voucher_release_port != IP_NULL)
  ip_release(voucher_release_port);

 return MACH_MSG_SUCCESS;

invalid_reply:
 is_write_unlock(space);

 if (release_port != IP_NULL)
  ip_release(release_port);

 assert(voucher_port == IP_NULL);
 assert(voucher_soright == IP_NULL);

 if ((*optionp & MACH_SEND_KERNEL) == 0) {
  mach_port_guard_exception(reply_name, 0, 0, kGUARD_EXC_SEND_INVALID_REPLY);
 }
 return MACH_SEND_INVALID_REPLY;

invalid_dest:
 is_write_unlock(space);

 if (release_port != IP_NULL)
  ip_release(release_port);

 if (reply_soright != IP_NULL)
  ipc_notify_port_deleted(reply_soright, reply_name);

 assert(voucher_port == IP_NULL);
 assert(voucher_soright == IP_NULL);

 return MACH_SEND_INVALID_DEST;
}
