
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct socket {int dummy; } ;
struct mbuf {int dummy; } ;
struct content_filter {int cf_flags; int cf_kcunit; int cf_kcref; } ;
struct cfil_msg_hdr {int cfm_len; int cfm_op; int cfm_sock_id; int cfm_type; int cfm_version; } ;
struct cfil_info {int cfi_first_event; struct cfil_entry* cfi_entries; } ;
struct cfe_buf {int cfe_ctl_q; } ;
struct cfil_entry {int cfe_flags; int cfe_last_event; struct content_filter* cfe_filter; TYPE_1__* cfe_cfil_info; struct cfe_buf cfe_rcv; struct cfe_buf cfe_snd; } ;
typedef scalar_t__ errno_t ;
struct TYPE_4__ {int cfs_disconnect_event_fail; int cfs_disconnect_event_flow_control; int cfs_disconnect_in_event_ok; int cfs_disconnect_out_event_ok; } ;
struct TYPE_3__ {int cfi_sock_id; } ;


 int CFEF_FLOW_CONTROLLED ;
 int CFEF_SENT_DISCONNECT_IN ;
 int CFEF_SENT_DISCONNECT_OUT ;
 int CFF_FLOW_CONTROLLED ;
 int CFIL_LOG (int ,char*,scalar_t__,...) ;
 int CFI_ADD_TIME_LOG (struct cfil_info*,int *,int *,int ) ;
 int CFM_OP_DISCONNECT_IN ;
 int CFM_OP_DISCONNECT_OUT ;
 int CFM_TYPE_EVENT ;
 int CFM_VERSION_CURRENT ;
 int CTL_DATA_EOR ;
 scalar_t__ EBUSY ;
 scalar_t__ ENOBUFS ;
 int LOG_ERR ;
 int LOG_INFO ;
 int OSIncrementAtomic (int *) ;
 scalar_t__ VM_KERNEL_ADDRPERM (struct socket*) ;
 int bzero (struct cfil_msg_hdr*,int) ;
 int cfil_info_log (int ,struct cfil_info*,char*) ;
 int cfil_lck_rw ;
 scalar_t__ cfil_queue_empty (int *) ;
 int cfil_rw_lock_exclusive (int *) ;
 int cfil_rw_lock_shared (int *) ;
 int cfil_rw_lock_shared_to_exclusive (int *) ;
 int cfil_rw_unlock_exclusive (int *) ;
 int cfil_rw_unlock_shared (int *) ;
 TYPE_2__ cfil_stats ;
 scalar_t__ ctl_enqueuedata (int ,int ,struct cfil_msg_hdr*,int,int ) ;
 int mbuf_freem (struct mbuf*) ;
 int microuptime (int *) ;
 int socket_lock_assert_owned (struct socket*) ;

__attribute__((used)) static int
cfil_dispatch_disconnect_event(struct socket *so, struct cfil_info *cfil_info, uint32_t kcunit, int outgoing)
{
 errno_t error = 0;
 struct mbuf *msg = ((void*)0);
 struct cfil_entry *entry;
 struct cfe_buf *entrybuf;
 struct cfil_msg_hdr msg_disconnected;
 struct content_filter *cfc;

 socket_lock_assert_owned(so);

 cfil_rw_lock_shared(&cfil_lck_rw);

 entry = &cfil_info->cfi_entries[kcunit - 1];
 if (outgoing)
  entrybuf = &entry->cfe_snd;
 else
  entrybuf = &entry->cfe_rcv;

 cfc = entry->cfe_filter;
 if (cfc == ((void*)0))
  goto done;

 CFIL_LOG(LOG_INFO, "so %llx kcunit %u outgoing %d",
    (uint64_t)VM_KERNEL_ADDRPERM(so), kcunit, outgoing);




 if ((outgoing && (entry->cfe_flags & CFEF_SENT_DISCONNECT_OUT)) ||
  (!outgoing && (entry->cfe_flags & CFEF_SENT_DISCONNECT_IN))) {
  CFIL_LOG(LOG_INFO, "so %llx disconnect already sent",
   (uint64_t)VM_KERNEL_ADDRPERM(so));
  goto done;
 }





 if (outgoing && cfil_queue_empty(&entrybuf->cfe_ctl_q) == 0) {
  CFIL_LOG(LOG_INFO, "so %llx control queue not empty",
   (uint64_t)VM_KERNEL_ADDRPERM(so));
  error = EBUSY;
  goto done;
 }

 if (cfc->cf_flags & CFF_FLOW_CONTROLLED) {
  error = ENOBUFS;
  goto done;
 }







 bzero(&msg_disconnected, sizeof(struct cfil_msg_hdr));
 msg_disconnected.cfm_len = sizeof(struct cfil_msg_hdr);
 msg_disconnected.cfm_version = CFM_VERSION_CURRENT;
 msg_disconnected.cfm_type = CFM_TYPE_EVENT;
 msg_disconnected.cfm_op = outgoing ? CFM_OP_DISCONNECT_OUT :
  CFM_OP_DISCONNECT_IN;
 msg_disconnected.cfm_sock_id = entry->cfe_cfil_info->cfi_sock_id;
 error = ctl_enqueuedata(entry->cfe_filter->cf_kcref,
    entry->cfe_filter->cf_kcunit,
    &msg_disconnected,
    sizeof(struct cfil_msg_hdr),
    CTL_DATA_EOR);
 if (error != 0) {
  CFIL_LOG(LOG_ERR, "ctl_enqueuembuf() failed: %d", error);
  mbuf_freem(msg);
  goto done;
 }
 microuptime(&entry->cfe_last_event);
 CFI_ADD_TIME_LOG(cfil_info, &entry->cfe_last_event, &cfil_info->cfi_first_event, msg_disconnected.cfm_op);


 if (outgoing) {
  entry->cfe_flags |= CFEF_SENT_DISCONNECT_OUT;
  OSIncrementAtomic(&cfil_stats.cfs_disconnect_out_event_ok);
 } else {
  entry->cfe_flags |= CFEF_SENT_DISCONNECT_IN;
  OSIncrementAtomic(&cfil_stats.cfs_disconnect_in_event_ok);
 }
done:
 if (error == ENOBUFS) {
  entry->cfe_flags |= CFEF_FLOW_CONTROLLED;
  OSIncrementAtomic(
   &cfil_stats.cfs_disconnect_event_flow_control);

  if (!cfil_rw_lock_shared_to_exclusive(&cfil_lck_rw))
   cfil_rw_lock_exclusive(&cfil_lck_rw);

  cfc->cf_flags |= CFF_FLOW_CONTROLLED;

  cfil_rw_unlock_exclusive(&cfil_lck_rw);
 } else {
  if (error != 0)
   OSIncrementAtomic(
    &cfil_stats.cfs_disconnect_event_fail);

  cfil_rw_unlock_shared(&cfil_lck_rw);
 }
 return (error);
}
