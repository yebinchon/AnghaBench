#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint64_t ;
typedef  int uint32_t ;
struct socket {int dummy; } ;
struct cfil_queue {unsigned int q_start; } ;
struct TYPE_5__ {int /*<<< orphan*/  cfi_inject_q; } ;
struct TYPE_4__ {int /*<<< orphan*/  cfi_inject_q; } ;
struct cfil_info {TYPE_2__ cfi_rcv; TYPE_1__ cfi_snd; struct cfil_entry* cfi_entries; } ;
struct cfe_buf {unsigned int cfe_pass_offset; struct cfil_queue cfe_pending_q; } ;
struct cfil_entry {struct cfe_buf cfe_rcv; struct cfe_buf cfe_snd; } ;
typedef  struct socket* mbuf_t ;
typedef  scalar_t__ errno_t ;
struct TYPE_6__ {int /*<<< orphan*/  cfs_inject_q_in_enqueued; int /*<<< orphan*/  cfs_inject_q_out_enqueued; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfil_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int,unsigned int,...) ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int MAX_CONTENT_FILTER ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct socket*) ; 
 scalar_t__ FUNC4 (struct socket*,struct cfil_info*,int,int,struct socket*,unsigned int) ; 
 unsigned int FUNC5 (struct socket*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct socket*,unsigned int) ; 
 struct socket* FUNC7 (struct cfil_queue*) ; 
 int /*<<< orphan*/  FUNC8 (struct cfil_queue*,struct socket*,unsigned int) ; 
 TYPE_3__ cfil_stats ; 
 int /*<<< orphan*/  FUNC9 (struct socket*) ; 

__attribute__((used)) static int
FUNC10(struct socket *so, struct cfil_info *cfil_info, uint32_t kcunit, int outgoing)
{
	uint64_t passlen, curlen;
	mbuf_t data;
	unsigned int datalen;
	errno_t error = 0;
	struct cfil_entry *entry;
	struct cfe_buf *entrybuf;
	struct cfil_queue *pending_q;

	FUNC1(LOG_INFO, "so %llx kcunit %u outgoing %d",
		(uint64_t)FUNC3(so), kcunit, outgoing);

	FUNC9(so);

	entry = &cfil_info->cfi_entries[kcunit - 1];
	if (outgoing)
		entrybuf = &entry->cfe_snd;
	else
		entrybuf = &entry->cfe_rcv;

	pending_q = &entrybuf->cfe_pending_q;

	passlen = entrybuf->cfe_pass_offset - pending_q->q_start;

	/*
	 * Locate the chunks of data that we can pass to the next filter
	 * A data chunk must be on mbuf boundaries
	 */
	curlen = 0;
	while ((data = FUNC7(pending_q)) != NULL) {
		datalen = FUNC5(data, NULL, NULL);

#if DATA_DEBUG
		CFIL_LOG(LOG_DEBUG,
				 "CFIL: SERVICE PENDING-Q: data %llx datalen %u passlen %llu curlen %llu",
			(uint64_t)VM_KERNEL_ADDRPERM(data), datalen,
			passlen, curlen);
#endif

		if (curlen + datalen > passlen)
			break;

		FUNC8(pending_q, data, datalen);

		curlen += datalen;

		for (kcunit += 1;
			kcunit <= MAX_CONTENT_FILTER;
			kcunit++) {
			error = FUNC4(so, cfil_info, kcunit, outgoing,
				data, datalen);
			/* 0 means passed so we can continue */
			if (error != 0)
				break;
		}
		/* When data has passed all filters, re-inject */
		if (error == 0) {
			if (outgoing) {
				FUNC6(
					&cfil_info->cfi_snd.cfi_inject_q,
					data, datalen);
				FUNC2(datalen,
					&cfil_stats.cfs_inject_q_out_enqueued);
			} else {
				FUNC6(
					&cfil_info->cfi_rcv.cfi_inject_q,
					data, datalen);
				FUNC2(datalen,
					&cfil_stats.cfs_inject_q_in_enqueued);
			}
		}
	}

	FUNC0(cfil_info);

	return (error);
}