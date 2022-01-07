
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct socket {int dummy; } ;
struct content_filter {int cf_flags; int cf_kcunit; int cf_kcref; } ;
struct TYPE_8__ {int cfm_len; int cfm_sock_id; int cfm_op; int cfm_type; int cfm_version; } ;
struct TYPE_7__ {int tv_usec; int tv_sec; } ;
struct cfil_msg_sock_closed {TYPE_3__ cfc_msghdr; int cfc_op_list_ctr; int cfc_op_list; int cfc_op_time; TYPE_2__ cfc_first_event; } ;
struct TYPE_10__ {int tv_usec; int tv_sec; } ;
struct cfil_info {TYPE_5__ cfi_first_event; int cfi_op_list_ctr; int cfi_op_list; int cfi_op_time; struct cfil_entry* cfi_entries; } ;
struct cfil_entry {int cfe_flags; struct content_filter* cfe_filter; TYPE_1__* cfe_cfil_info; int cfe_last_event; } ;
typedef scalar_t__ errno_t ;
struct TYPE_9__ {int cfs_closed_event_fail; int cfs_closed_event_flow_control; int cfs_closed_event_ok; } ;
struct TYPE_6__ {int cfi_sock_id; } ;


 int CFEF_FLOW_CONTROLLED ;
 int CFEF_SENT_SOCK_ATTACHED ;
 int CFEF_SENT_SOCK_CLOSED ;
 int CFF_FLOW_CONTROLLED ;
 int CFIL_LOG (int ,char*,scalar_t__,...) ;
 int CFI_ADD_TIME_LOG (struct cfil_info*,int *,TYPE_5__*,int ) ;
 int CFI_MAX_TIME_LOG_ENTRY ;
 int CFM_OP_SOCKET_CLOSED ;
 int CFM_TYPE_EVENT ;
 int CFM_VERSION_CURRENT ;
 int CTL_DATA_EOR ;
 scalar_t__ ENOBUFS ;
 int LOG_ERR ;
 int LOG_INFO ;
 int OSIncrementAtomic (int *) ;
 scalar_t__ VM_KERNEL_ADDRPERM (struct socket*) ;
 int bzero (struct cfil_msg_sock_closed*,int) ;
 int cfil_lck_rw ;
 int cfil_rw_lock_exclusive (int *) ;
 int cfil_rw_lock_shared (int *) ;
 int cfil_rw_lock_shared_to_exclusive (int *) ;
 int cfil_rw_unlock_exclusive (int *) ;
 int cfil_rw_unlock_shared (int *) ;
 TYPE_4__ cfil_stats ;
 scalar_t__ ctl_enqueuedata (int ,int ,struct cfil_msg_sock_closed*,int,int ) ;
 int memcpy (int ,int ,int) ;
 int microuptime (int *) ;
 int socket_lock_assert_owned (struct socket*) ;

int
cfil_dispatch_closed_event(struct socket *so, struct cfil_info *cfil_info, int kcunit)
{
 struct cfil_entry *entry;
 struct cfil_msg_sock_closed msg_closed;
 errno_t error = 0;
 struct content_filter *cfc;

 socket_lock_assert_owned(so);

 cfil_rw_lock_shared(&cfil_lck_rw);

 entry = &cfil_info->cfi_entries[kcunit - 1];
 cfc = entry->cfe_filter;
 if (cfc == ((void*)0))
  goto done;

 CFIL_LOG(LOG_INFO, "so %llx kcunit %d",
    (uint64_t)VM_KERNEL_ADDRPERM(so), kcunit);


 if (cfc->cf_flags & CFF_FLOW_CONTROLLED) {
  error = ENOBUFS;
  goto done;
 }



 if ((entry->cfe_flags & CFEF_SENT_SOCK_CLOSED) != 0)
  goto done;
 if ((entry->cfe_flags & CFEF_SENT_SOCK_ATTACHED) == 0)
  goto done;

 microuptime(&entry->cfe_last_event);
 CFI_ADD_TIME_LOG(cfil_info, &entry->cfe_last_event, &cfil_info->cfi_first_event, CFM_OP_SOCKET_CLOSED);

 bzero(&msg_closed, sizeof(struct cfil_msg_sock_closed));
 msg_closed.cfc_msghdr.cfm_len = sizeof(struct cfil_msg_sock_closed);
 msg_closed.cfc_msghdr.cfm_version = CFM_VERSION_CURRENT;
 msg_closed.cfc_msghdr.cfm_type = CFM_TYPE_EVENT;
 msg_closed.cfc_msghdr.cfm_op = CFM_OP_SOCKET_CLOSED;
 msg_closed.cfc_msghdr.cfm_sock_id = entry->cfe_cfil_info->cfi_sock_id;
 msg_closed.cfc_first_event.tv_sec = cfil_info->cfi_first_event.tv_sec;
 msg_closed.cfc_first_event.tv_usec = cfil_info->cfi_first_event.tv_usec;
 memcpy(msg_closed.cfc_op_time, cfil_info->cfi_op_time, sizeof(uint32_t)*CFI_MAX_TIME_LOG_ENTRY);
 memcpy(msg_closed.cfc_op_list, cfil_info->cfi_op_list, sizeof(unsigned char)*CFI_MAX_TIME_LOG_ENTRY);
 msg_closed.cfc_op_list_ctr = cfil_info->cfi_op_list_ctr;
 error = ctl_enqueuedata(entry->cfe_filter->cf_kcref,
    entry->cfe_filter->cf_kcunit,
    &msg_closed,
    sizeof(struct cfil_msg_sock_closed),
    CTL_DATA_EOR);
 if (error != 0) {
  CFIL_LOG(LOG_ERR, "ctl_enqueuedata() failed: %d",
   error);
  goto done;
 }

 entry->cfe_flags |= CFEF_SENT_SOCK_CLOSED;
 OSIncrementAtomic(&cfil_stats.cfs_closed_event_ok);
done:

 if (error == ENOBUFS) {
  entry->cfe_flags |= CFEF_FLOW_CONTROLLED;
  OSIncrementAtomic(&cfil_stats.cfs_closed_event_flow_control);

  if (!cfil_rw_lock_shared_to_exclusive(&cfil_lck_rw))
   cfil_rw_lock_exclusive(&cfil_lck_rw);

  cfc->cf_flags |= CFF_FLOW_CONTROLLED;

  cfil_rw_unlock_exclusive(&cfil_lck_rw);
 } else {
  if (error != 0)
   OSIncrementAtomic(&cfil_stats.cfs_closed_event_fail);

  cfil_rw_unlock_shared(&cfil_lck_rw);
 }

 return (error);
}
