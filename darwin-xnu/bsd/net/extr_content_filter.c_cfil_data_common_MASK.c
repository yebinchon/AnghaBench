#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct socket {struct socket* m_nextpkt; int /*<<< orphan*/  m_flags; } ;
struct sockaddr {int dummy; } ;
struct mbuf {struct mbuf* m_nextpkt; int /*<<< orphan*/  m_flags; } ;
struct cfi_buf {scalar_t__ cfi_pending_last; scalar_t__ cfi_pending_mbcnt; scalar_t__ cfi_pending_mbnum; scalar_t__ cfi_pass_offset; unsigned int cfi_pending_first; int /*<<< orphan*/  cfi_tail_drop_cnt; } ;
struct cfil_info {int cfi_flags; struct cfi_buf cfi_rcv; struct cfi_buf cfi_snd; } ;
typedef  scalar_t__ errno_t ;

/* Variables and functions */
 int CFIF_DROP ; 
 int /*<<< orphan*/  FUNC0 (struct cfil_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int ENOBUFS ; 
 int EPIPE ; 
 scalar_t__ FUNC2 (struct cfil_info*,int) ; 
 scalar_t__ FUNC3 (struct socket*) ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int MAX_CONTENT_FILTER ; 
 scalar_t__ FUNC4 (struct socket*) ; 
 scalar_t__ FUNC5 (struct socket*,struct cfil_info*,int,int,struct socket*,unsigned int) ; 
 unsigned int FUNC6 (struct socket*,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct cfi_buf*) ; 
 scalar_t__ cfil_udp_gc_mbuf_cnt_max ; 
 scalar_t__ cfil_udp_gc_mbuf_num_max ; 
 int /*<<< orphan*/  FUNC8 (struct cfil_info*,struct socket*) ; 
 int /*<<< orphan*/  FUNC9 (struct socket*,struct cfil_info*,int,unsigned int) ; 
 struct socket* FUNC10 (int /*<<< orphan*/ *,struct sockaddr*,struct socket*,struct socket*) ; 

int
FUNC11(struct socket *so, struct cfil_info *cfil_info, int outgoing, struct sockaddr *to,
		struct mbuf *data, struct mbuf *control, uint32_t flags)
{
#pragma unused(to, control, flags)
	errno_t error = 0;
	unsigned int datalen;
	int mbcnt = 0;
	int mbnum = 0;
	int kcunit;
	struct cfi_buf *cfi_buf;
	struct mbuf *chain = NULL;

	if (cfil_info == NULL) {
		FUNC1(LOG_ERR, "so %llx cfil detached",
			(uint64_t)FUNC4(so));
		error = 0;
		goto done;
	} else if (cfil_info->cfi_flags & CFIF_DROP) {
		FUNC1(LOG_ERR, "so %llx drop set",
			(uint64_t)FUNC4(so));
		error = EPIPE;
		goto done;
	}

	datalen = FUNC6(data, &mbcnt, &mbnum);

	if (outgoing)
		cfi_buf = &cfil_info->cfi_snd;
	else
		cfi_buf = &cfil_info->cfi_rcv;

	cfi_buf->cfi_pending_last += datalen;
	cfi_buf->cfi_pending_mbcnt += mbcnt;
	cfi_buf->cfi_pending_mbnum += mbnum;

	if (FUNC3(so)) {
		if (cfi_buf->cfi_pending_mbnum > cfil_udp_gc_mbuf_num_max ||
			cfi_buf->cfi_pending_mbcnt > cfil_udp_gc_mbuf_cnt_max) {
			cfi_buf->cfi_tail_drop_cnt++;
			cfi_buf->cfi_pending_mbcnt -= mbcnt;
			cfi_buf->cfi_pending_mbnum -= mbnum;
			return (EPIPE);
		}
	}

	FUNC7(cfi_buf);

#if DATA_DEBUG
	CFIL_LOG(LOG_DEBUG, "CFIL: QUEUEING DATA: <so %llx> %s: data %llx len %u flags 0x%x nextpkt %llx - cfi_pending_last %llu cfi_pending_mbcnt %u 	cfi_pass_offset %llu",
			 (uint64_t)VM_KERNEL_ADDRPERM(so),
			 outgoing ? "OUT" : "IN",
			 (uint64_t)VM_KERNEL_ADDRPERM(data), datalen, data->m_flags,
			 (uint64_t)VM_KERNEL_ADDRPERM(data->m_nextpkt),
			 cfi_buf->cfi_pending_last,
			 cfi_buf->cfi_pending_mbcnt,
			 cfi_buf->cfi_pass_offset);
#endif

	/* Fast path when below pass offset */
	if (cfi_buf->cfi_pending_last <= cfi_buf->cfi_pass_offset) {
		FUNC9(so, cfil_info, outgoing, datalen);
#if DATA_DEBUG
		CFIL_LOG(LOG_DEBUG, "CFIL: QUEUEING DATA: FAST PATH");
#endif
	} else {
		for (kcunit = 1; kcunit <= MAX_CONTENT_FILTER; kcunit++) {
			// Is cfil attached to this filter?
			if (FUNC2(cfil_info, kcunit)) {
				if (FUNC3(so)) {
					/* UDP only:
					 * Chain addr (incoming only TDB), control (optional) and data into one chain.
					 * This full chain will be reinjected into socket after recieving verdict.
					 */
					(void) FUNC8(cfil_info, data);
					chain = FUNC10(NULL, outgoing ? NULL : to, data, control);
					if (chain == NULL) {
						return (ENOBUFS);
					}
					data = chain;
				}
				error = FUNC5(so, cfil_info, kcunit, outgoing, data,
										 datalen);
			}
			/* 0 means passed so continue with next filter */
			if (error != 0)
				break;
		}
	}

	/* Move cursor if no filter claimed the data */
	if (error == 0) {
		cfi_buf->cfi_pending_first += datalen;
		cfi_buf->cfi_pending_mbcnt -= mbcnt;
		cfi_buf->cfi_pending_mbnum -= mbnum;
		FUNC7(cfi_buf);
	}
done:
	FUNC0(cfil_info);

	return (error);
}