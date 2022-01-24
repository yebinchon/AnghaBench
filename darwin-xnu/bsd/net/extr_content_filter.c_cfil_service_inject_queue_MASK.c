#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct socket {int /*<<< orphan*/  so_snd; int /*<<< orphan*/  so_rcv; int /*<<< orphan*/  m_flags; } ;
struct cfil_queue {int dummy; } ;
struct cfi_buf {unsigned int cfi_pending_first; int cfi_pending_mbcnt; int cfi_pending_mbnum; struct cfil_queue cfi_inject_q; } ;
struct cfil_info {int cfi_flags; struct cfi_buf cfi_rcv; struct cfi_buf cfi_snd; } ;
typedef  struct socket* mbuf_t ;
typedef  int errno_t ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_2__ {int /*<<< orphan*/  cfs_inject_q_in_fail; int /*<<< orphan*/  cfs_inject_q_out_fail; int /*<<< orphan*/  cfs_inject_q_nomem; int /*<<< orphan*/  cfs_inject_q_nobufs; int /*<<< orphan*/  cfs_inject_q_in_passed; int /*<<< orphan*/  cfs_inject_q_out_passed; } ;

/* Variables and functions */
 int CFIF_CLOSE_WAIT ; 
 int CFIF_RETRY_INJECT_IN ; 
 int CFIF_RETRY_INJECT_OUT ; 
 int CFIF_SHUT_WR ; 
 int /*<<< orphan*/  FUNC0 (struct cfil_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int ENOBUFS ; 
 int ENOMEM ; 
 int FUNC2 (struct socket*) ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  M_SKIPCFIL ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SHUT_WR ; 
 int TRUE ; 
 scalar_t__ FUNC5 (struct socket*) ; 
 unsigned int FUNC6 (struct socket*,int*,int*) ; 
 scalar_t__ FUNC7 (struct socket*) ; 
 int /*<<< orphan*/  FUNC8 (struct cfi_buf*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct cfil_info*,char*) ; 
 scalar_t__ FUNC10 (struct cfil_queue*) ; 
 struct socket* FUNC11 (struct cfil_queue*) ; 
 int /*<<< orphan*/  FUNC12 (struct cfil_queue*) ; 
 int /*<<< orphan*/  FUNC13 (struct cfil_queue*,struct socket*,unsigned int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct socket*,int /*<<< orphan*/ ) ; 
 TYPE_1__ cfil_stats ; 
 scalar_t__ remote_addr_ptr ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,struct socket*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,struct socket*) ; 
 int /*<<< orphan*/  FUNC18 (struct socket*) ; 
 int /*<<< orphan*/  FUNC19 (struct socket*) ; 
 int FUNC20 (struct socket*,int /*<<< orphan*/ *,struct socket*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct socket*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC24(struct socket *so, struct cfil_info *cfil_info, int outgoing)
{
	mbuf_t data;
	unsigned int datalen;
	int mbcnt = 0;
	int mbnum = 0;
	errno_t error = 0;
	struct cfi_buf *cfi_buf;
	struct cfil_queue *inject_q;
	int need_rwakeup = 0;
	int count = 0;

	if (cfil_info == NULL)
		return (0);

	FUNC18(so);

	if (outgoing) {
		cfi_buf = &cfil_info->cfi_snd;
		cfil_info->cfi_flags &= ~CFIF_RETRY_INJECT_OUT;
	} else {
		cfi_buf = &cfil_info->cfi_rcv;
		cfil_info->cfi_flags &= ~CFIF_RETRY_INJECT_IN;
	}
	inject_q = &cfi_buf->cfi_inject_q;

	if (FUNC10(inject_q))
		return (0);

#if DATA_DEBUG | VERDICT_DEBUG
	CFIL_LOG(LOG_ERR, "CFIL: SERVICE INJECT-Q: <so %llx> outgoing %d queue len %llu",
			 (uint64_t)VM_KERNEL_ADDRPERM(so), outgoing, cfil_queue_len(inject_q));
#endif

	while ((data = FUNC11(inject_q)) != NULL) {
		datalen = FUNC6(data, &mbcnt, &mbnum);

#if DATA_DEBUG
		CFIL_LOG(LOG_DEBUG, "CFIL: SERVICE INJECT-Q: <%s>: <so %llx> data %llx datalen %u (mbcnt %u)",
				 remote_addr_ptr ? "UNCONNECTED" : "CONNECTED",
				 (uint64_t)VM_KERNEL_ADDRPERM(so), (uint64_t)VM_KERNEL_ADDRPERM(data), datalen, mbcnt);
#endif

		/* Remove data from queue and adjust stats */
		FUNC13(inject_q, data, datalen);
		cfi_buf->cfi_pending_first += datalen;
		cfi_buf->cfi_pending_mbcnt -= mbcnt;
		cfi_buf->cfi_pending_mbnum -= mbnum;
		FUNC8(cfi_buf);

		if (outgoing) {
			error = FUNC20(so, NULL, data, NULL, 0);
			if (error != 0) {
#if DATA_DEBUG
				cfil_info_log(LOG_ERR, cfil_info, "CFIL: Error: sosend_reinject() failed");
				CFIL_LOG(LOG_ERR, "### sosend() failed %d", error);
#endif
				break;
			}
			// At least one injection succeeded, need to wake up pending threads.
			need_rwakeup = 1;
		} else {
			data->m_flags |= M_SKIPCFIL;

			/*
			 * NOTE: We currently only support TCP and UDP.
			 * For RAWIP, MPTCP and message TCP we'll
			 * need to call the appropriate sbappendxxx()
			 * of fix sock_inject_data_in()
			 */
			if (FUNC2(so) == TRUE) {
				if (FUNC16(&so->so_rcv, data, 0))
					need_rwakeup = 1;
			} else {
				if (FUNC17(&so->so_rcv, data))
					need_rwakeup = 1;
			}
		}

		if (outgoing)
			FUNC3(datalen,
				&cfil_stats.cfs_inject_q_out_passed);
		else
			FUNC3(datalen,
				&cfil_stats.cfs_inject_q_in_passed);

		count++;
	}

#if DATA_DEBUG | VERDICT_DEBUG
	CFIL_LOG(LOG_ERR, "CFIL: SERVICE INJECT-Q: <so %llx> injected %d",
			 (uint64_t)VM_KERNEL_ADDRPERM(so), count);
#endif

	/* A single wakeup is for several packets is more efficient */
	if (need_rwakeup) {
		if (outgoing == TRUE)
			FUNC22(so);
		else
			FUNC19(so);
	}

	if (error != 0 && cfil_info) {
		if (error == ENOBUFS)
			FUNC4(&cfil_stats.cfs_inject_q_nobufs);
		if (error == ENOMEM)
			FUNC4(&cfil_stats.cfs_inject_q_nomem);

		if (outgoing) {
			cfil_info->cfi_flags |= CFIF_RETRY_INJECT_OUT;
			FUNC4(&cfil_stats.cfs_inject_q_out_fail);
		} else {
			cfil_info->cfi_flags |= CFIF_RETRY_INJECT_IN;
			FUNC4(&cfil_stats.cfs_inject_q_in_fail);
		}
	}

	/*
	 * Notify
	 */
	if (cfil_info && (cfil_info->cfi_flags & CFIF_SHUT_WR)) {
		FUNC15(so, SHUT_WR);
		if (FUNC14(&so->so_snd) == 0)
			FUNC21(so, SHUT_WR);
	}
	if (cfil_info && (cfil_info->cfi_flags & CFIF_CLOSE_WAIT)) {
		if (FUNC7(so) == 0) {
			FUNC1(LOG_INFO, "so %llx waking",
				(uint64_t)FUNC5(so));
			FUNC23((caddr_t)cfil_info);
		}
	}

	FUNC0(cfil_info);

	return (error);
}