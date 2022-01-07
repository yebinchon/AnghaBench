
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uuid_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct socket {int so_flags; int last_uuid; int last_pid; int e_uuid; int e_pid; TYPE_3__* so_proto; } ;
struct content_filter {int cf_necp_control_unit; int cf_flags; int cf_kcunit; int cf_kcref; } ;
struct TYPE_8__ {int cfm_len; scalar_t__ cfm_sock_id; int cfm_op; int cfm_type; int cfm_version; } ;
struct cfil_msg_sock_attached {int cfs_e_uuid; int cfs_e_pid; int cfs_uuid; int cfs_pid; int cfs_sock_protocol; int cfs_sock_type; int cfs_sock_family; TYPE_1__ cfs_msghdr; } ;
struct TYPE_12__ {int tv_usec; int tv_sec; } ;
struct cfil_info {TYPE_5__ cfi_first_event; struct cfil_entry* cfi_entries; } ;
struct TYPE_13__ {int tv_usec; int tv_sec; } ;
struct cfil_entry {int cfe_flags; TYPE_6__ cfe_last_event; struct content_filter* cfe_filter; TYPE_4__* cfe_cfil_info; } ;
typedef scalar_t__ errno_t ;
struct TYPE_14__ {int cfs_attach_event_fail; int cfs_attach_event_flow_control; int cfs_attach_event_ok; } ;
struct TYPE_11__ {scalar_t__ cfi_sock_id; } ;
struct TYPE_10__ {int pr_protocol; int pr_type; TYPE_2__* pr_domain; } ;
struct TYPE_9__ {int dom_family; } ;


 int CFEF_FLOW_CONTROLLED ;
 int CFEF_SENT_SOCK_ATTACHED ;
 int CFF_FLOW_CONTROLLED ;
 int CFIL_LOG (int ,char*,scalar_t__,...) ;
 int CFM_OP_SOCKET_ATTACHED ;
 int CFM_TYPE_EVENT ;
 int CFM_VERSION_CURRENT ;
 int CTL_DATA_EOR ;
 scalar_t__ EINVAL ;
 scalar_t__ ENOBUFS ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int LOG_INFO ;
 int MAX_CONTENT_FILTER ;
 int OSIncrementAtomic (int *) ;
 int SOF_DELEGATED ;
 int VERIFY (int) ;
 scalar_t__ VM_KERNEL_ADDRPERM (struct socket*) ;
 int bzero (struct cfil_msg_sock_attached*,int) ;
 int cfil_lck_rw ;
 int cfil_rw_lock_exclusive (int *) ;
 int cfil_rw_lock_shared (int *) ;
 int cfil_rw_lock_shared_to_exclusive (int *) ;
 int cfil_rw_unlock_exclusive (int *) ;
 int cfil_rw_unlock_shared (int *) ;
 TYPE_7__ cfil_stats ;
 struct content_filter** content_filters ;
 scalar_t__ ctl_enqueuedata (int ,int ,struct cfil_msg_sock_attached*,int,int ) ;
 int memcpy (int ,int ,int) ;
 int microuptime (TYPE_6__*) ;
 int socket_lock_assert_owned (struct socket*) ;

__attribute__((used)) static int
cfil_dispatch_attach_event(struct socket *so, struct cfil_info *cfil_info, uint32_t filter_control_unit)
{
 errno_t error = 0;
 struct cfil_entry *entry = ((void*)0);
 struct cfil_msg_sock_attached msg_attached;
 uint32_t kcunit;
 struct content_filter *cfc = ((void*)0);

 socket_lock_assert_owned(so);

 cfil_rw_lock_shared(&cfil_lck_rw);

 if (so->so_proto == ((void*)0) || so->so_proto->pr_domain == ((void*)0)) {
  error = EINVAL;
  goto done;
 }



 for (kcunit = 1; kcunit <= MAX_CONTENT_FILTER; kcunit++) {
  cfc = content_filters[kcunit - 1];

  if (cfc == ((void*)0))
   continue;
  if (cfc->cf_necp_control_unit != filter_control_unit)
   continue;
  entry = &cfil_info->cfi_entries[kcunit - 1];
  if (entry->cfe_filter == ((void*)0))
   continue;

  VERIFY(cfc == entry->cfe_filter);

  break;
 }

 if (entry == ((void*)0) || entry->cfe_filter == ((void*)0))
  goto done;

 if ((entry->cfe_flags & CFEF_SENT_SOCK_ATTACHED))
  goto done;

 CFIL_LOG(LOG_INFO, "so %llx filter_control_unit %u kcunit %u",
  (uint64_t)VM_KERNEL_ADDRPERM(so), filter_control_unit, kcunit);


 if (cfc->cf_flags & CFF_FLOW_CONTROLLED) {
  error = ENOBUFS;
  goto done;
 }

 bzero(&msg_attached, sizeof(struct cfil_msg_sock_attached));
 msg_attached.cfs_msghdr.cfm_len = sizeof(struct cfil_msg_sock_attached);
 msg_attached.cfs_msghdr.cfm_version = CFM_VERSION_CURRENT;
 msg_attached.cfs_msghdr.cfm_type = CFM_TYPE_EVENT;
 msg_attached.cfs_msghdr.cfm_op = CFM_OP_SOCKET_ATTACHED;
 msg_attached.cfs_msghdr.cfm_sock_id = entry->cfe_cfil_info->cfi_sock_id;

 msg_attached.cfs_sock_family = so->so_proto->pr_domain->dom_family;
 msg_attached.cfs_sock_type = so->so_proto->pr_type;
 msg_attached.cfs_sock_protocol = so->so_proto->pr_protocol;
 msg_attached.cfs_pid = so->last_pid;
 memcpy(msg_attached.cfs_uuid, so->last_uuid, sizeof(uuid_t));
 if (so->so_flags & SOF_DELEGATED) {
  msg_attached.cfs_e_pid = so->e_pid;
  memcpy(msg_attached.cfs_e_uuid, so->e_uuid, sizeof(uuid_t));
 } else {
  msg_attached.cfs_e_pid = so->last_pid;
  memcpy(msg_attached.cfs_e_uuid, so->last_uuid, sizeof(uuid_t));
 }






 error = ctl_enqueuedata(entry->cfe_filter->cf_kcref,
    entry->cfe_filter->cf_kcunit,
    &msg_attached,
    sizeof(struct cfil_msg_sock_attached),
    CTL_DATA_EOR);
 if (error != 0) {
  CFIL_LOG(LOG_ERR, "ctl_enqueuedata() failed: %d", error);
  goto done;
 }
 microuptime(&entry->cfe_last_event);
 cfil_info->cfi_first_event.tv_sec = entry->cfe_last_event.tv_sec;
 cfil_info->cfi_first_event.tv_usec = entry->cfe_last_event.tv_usec;

 entry->cfe_flags |= CFEF_SENT_SOCK_ATTACHED;
 OSIncrementAtomic(&cfil_stats.cfs_attach_event_ok);
done:


 if (error == ENOBUFS) {
  entry->cfe_flags |= CFEF_FLOW_CONTROLLED;
  OSIncrementAtomic(&cfil_stats.cfs_attach_event_flow_control);

  if (!cfil_rw_lock_shared_to_exclusive(&cfil_lck_rw))
   cfil_rw_lock_exclusive(&cfil_lck_rw);

  cfc->cf_flags |= CFF_FLOW_CONTROLLED;

  cfil_rw_unlock_exclusive(&cfil_lck_rw);
 } else {
  if (error != 0)
   OSIncrementAtomic(&cfil_stats.cfs_attach_event_fail);

  cfil_rw_unlock_shared(&cfil_lck_rw);
 }
 return (error);
}
