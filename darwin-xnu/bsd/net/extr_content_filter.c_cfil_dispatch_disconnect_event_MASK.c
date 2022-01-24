#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct socket {int dummy; } ;
struct mbuf {int dummy; } ;
struct content_filter {int cf_flags; int /*<<< orphan*/  cf_kcunit; int /*<<< orphan*/  cf_kcref; } ;
struct cfil_msg_hdr {int cfm_len; int /*<<< orphan*/  cfm_op; int /*<<< orphan*/  cfm_sock_id; int /*<<< orphan*/  cfm_type; int /*<<< orphan*/  cfm_version; } ;
struct cfil_info {int /*<<< orphan*/  cfi_first_event; struct cfil_entry* cfi_entries; } ;
struct cfe_buf {int /*<<< orphan*/  cfe_ctl_q; } ;
struct cfil_entry {int cfe_flags; int /*<<< orphan*/  cfe_last_event; struct content_filter* cfe_filter; TYPE_1__* cfe_cfil_info; struct cfe_buf cfe_rcv; struct cfe_buf cfe_snd; } ;
typedef  scalar_t__ errno_t ;
struct TYPE_4__ {int /*<<< orphan*/  cfs_disconnect_event_fail; int /*<<< orphan*/  cfs_disconnect_event_flow_control; int /*<<< orphan*/  cfs_disconnect_in_event_ok; int /*<<< orphan*/  cfs_disconnect_out_event_ok; } ;
struct TYPE_3__ {int /*<<< orphan*/  cfi_sock_id; } ;

/* Variables and functions */
 int CFEF_FLOW_CONTROLLED ; 
 int CFEF_SENT_DISCONNECT_IN ; 
 int CFEF_SENT_DISCONNECT_OUT ; 
 int CFF_FLOW_CONTROLLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC1 (struct cfil_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CFM_OP_DISCONNECT_IN ; 
 int /*<<< orphan*/  CFM_OP_DISCONNECT_OUT ; 
 int /*<<< orphan*/  CFM_TYPE_EVENT ; 
 int /*<<< orphan*/  CFM_VERSION_CURRENT ; 
 int /*<<< orphan*/  CTL_DATA_EOR ; 
 scalar_t__ EBUSY ; 
 scalar_t__ ENOBUFS ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct socket*) ; 
 int /*<<< orphan*/  FUNC4 (struct cfil_msg_hdr*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct cfil_info*,char*) ; 
 int /*<<< orphan*/  cfil_lck_rw ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_2__ cfil_stats ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cfil_msg_hdr*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct socket*) ; 

__attribute__((used)) static int
FUNC16(struct socket *so, struct cfil_info *cfil_info, uint32_t kcunit, int outgoing)
{
	errno_t error = 0;
	struct mbuf *msg = NULL;
	struct cfil_entry *entry;
	struct cfe_buf *entrybuf;
	struct cfil_msg_hdr msg_disconnected;
	struct content_filter *cfc;

	FUNC15(so);

	FUNC8(&cfil_lck_rw);

	entry = &cfil_info->cfi_entries[kcunit - 1];
	if (outgoing)
		entrybuf = &entry->cfe_snd;
	else
		entrybuf = &entry->cfe_rcv;

	cfc = entry->cfe_filter;
	if (cfc == NULL)
		goto done;

	FUNC0(LOG_INFO, "so %llx kcunit %u outgoing %d",
			 (uint64_t)FUNC3(so), kcunit, outgoing);

	/*
	 * Send the disconnection event once
	 */
	if ((outgoing && (entry->cfe_flags & CFEF_SENT_DISCONNECT_OUT)) ||
		(!outgoing && (entry->cfe_flags & CFEF_SENT_DISCONNECT_IN))) {
		FUNC0(LOG_INFO, "so %llx disconnect already sent",
			(uint64_t)FUNC3(so));
		goto done;
	}

	/*
	 * We're not disconnected as long as some data is waiting
	 * to be delivered to the filter
	 */
	if (outgoing && FUNC6(&entrybuf->cfe_ctl_q) == 0) {
		FUNC0(LOG_INFO, "so %llx control queue not empty",
			(uint64_t)FUNC3(so));
		error = EBUSY;
		goto done;
	}
	/* Would be wasteful to try when flow controlled */
	if (cfc->cf_flags & CFF_FLOW_CONTROLLED) {
		error = ENOBUFS;
		goto done;
	}

#if LIFECYCLE_DEBUG
	cfil_info_log(LOG_ERR, cfil_info, outgoing ?
				 "CFIL: LIFECYCLE: OUT - SENDING DISCONNECT UP":
				 "CFIL: LIFECYCLE: IN - SENDING DISCONNECT UP");
#endif

	FUNC4(&msg_disconnected, sizeof(struct cfil_msg_hdr));
	msg_disconnected.cfm_len = sizeof(struct cfil_msg_hdr);
	msg_disconnected.cfm_version = CFM_VERSION_CURRENT;
	msg_disconnected.cfm_type = CFM_TYPE_EVENT;
	msg_disconnected.cfm_op = outgoing ? CFM_OP_DISCONNECT_OUT :
		CFM_OP_DISCONNECT_IN;
	msg_disconnected.cfm_sock_id = entry->cfe_cfil_info->cfi_sock_id;
	error = FUNC12(entry->cfe_filter->cf_kcref,
				entry->cfe_filter->cf_kcunit,
				&msg_disconnected,
				sizeof(struct cfil_msg_hdr),
				CTL_DATA_EOR);
	if (error != 0) {
		FUNC0(LOG_ERR, "ctl_enqueuembuf() failed: %d", error);
		FUNC13(msg);
		goto done;
	}
	FUNC14(&entry->cfe_last_event);
	FUNC1(cfil_info, &entry->cfe_last_event, &cfil_info->cfi_first_event, msg_disconnected.cfm_op);

	/* Remember we have sent the disconnection message */
	if (outgoing) {
		entry->cfe_flags |= CFEF_SENT_DISCONNECT_OUT;
		FUNC2(&cfil_stats.cfs_disconnect_out_event_ok);
	} else {
		entry->cfe_flags |= CFEF_SENT_DISCONNECT_IN;
		FUNC2(&cfil_stats.cfs_disconnect_in_event_ok);
	}
done:
	if (error == ENOBUFS) {
		entry->cfe_flags |= CFEF_FLOW_CONTROLLED;
		FUNC2(
			&cfil_stats.cfs_disconnect_event_flow_control);

		if (!FUNC9(&cfil_lck_rw))
			FUNC7(&cfil_lck_rw);

		cfc->cf_flags |= CFF_FLOW_CONTROLLED;

		FUNC10(&cfil_lck_rw);
	} else {
		if (error != 0)
			FUNC2(
				&cfil_stats.cfs_disconnect_event_fail);

		FUNC11(&cfil_lck_rw);
	}
	return (error);
}