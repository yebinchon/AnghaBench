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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct socket {int dummy; } ;
struct mbuf {int dummy; } ;
struct cfil_info {struct cfil_entry* cfi_entries; } ;
struct cfe_buf {int /*<<< orphan*/  cfe_ctl_q; } ;
struct cfil_entry {int /*<<< orphan*/ * cfe_filter; struct cfe_buf cfe_rcv; struct cfe_buf cfe_snd; } ;
typedef  scalar_t__ errno_t ;
struct TYPE_2__ {int /*<<< orphan*/  cfs_ctl_q_in_enqueued; int /*<<< orphan*/  cfs_ctl_q_out_enqueued; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfil_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 scalar_t__ EJUSTRETURN ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct socket*) ; 
 scalar_t__ FUNC4 (struct socket*,struct cfil_info*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct mbuf*,int /*<<< orphan*/ ) ; 
 TYPE_1__ cfil_stats ; 
 int /*<<< orphan*/  FUNC6 (struct socket*) ; 

int
FUNC7(struct socket *so, struct cfil_info *cfil_info, uint32_t kcunit, int outgoing,
	struct mbuf *data, uint64_t datalen)
{
	errno_t error = 0;
	struct cfil_entry *entry;
	struct cfe_buf *entrybuf;

	FUNC1(LOG_INFO, "so %llx kcunit %u outgoing %d",
		(uint64_t)FUNC3(so), kcunit, outgoing);

	FUNC6(so);

	entry = &cfil_info->cfi_entries[kcunit - 1];
	if (outgoing)
		entrybuf = &entry->cfe_snd;
	else
		entrybuf = &entry->cfe_rcv;

	/* Are we attached to the filter? */
	if (entry->cfe_filter == NULL) {
		error = 0;
		goto done;
	}

	/* Dispatch to filters */
	FUNC5(&entrybuf->cfe_ctl_q, data, datalen);
	if (outgoing)
		FUNC2(datalen,
			&cfil_stats.cfs_ctl_q_out_enqueued);
	else
		FUNC2(datalen,
			&cfil_stats.cfs_ctl_q_in_enqueued);

	error = FUNC4(so, cfil_info, kcunit, outgoing);
	if (error != 0) {
		FUNC1(LOG_ERR, "cfil_data_service_ctl_q() error %d",
			error);
	}
	/*
	 * We have to return EJUSTRETURN in all cases to avoid double free
	 * by socket layer
	 */
	error = EJUSTRETURN;
done:
	FUNC0(cfil_info);

	FUNC1(LOG_INFO, "return %d", error);
	return (error);
}