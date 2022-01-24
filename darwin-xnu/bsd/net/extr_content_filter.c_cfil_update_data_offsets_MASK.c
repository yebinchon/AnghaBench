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
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
struct socket {int dummy; } ;
struct cfil_info {int cfi_flags; struct cfil_entry* cfi_entries; } ;
struct cfe_buf {scalar_t__ cfe_pass_offset; scalar_t__ cfe_peek_offset; int /*<<< orphan*/  cfe_ctl_q; } ;
struct cfil_entry {int /*<<< orphan*/  cfe_flags; struct cfe_buf cfe_rcv; struct cfe_buf cfe_snd; } ;
typedef  scalar_t__ errno_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CFEF_CFIL_DETACHED ; 
 int CFIF_CLOSE_WAIT ; 
 int CFIF_DROP ; 
 int /*<<< orphan*/  FUNC0 (struct cfil_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 scalar_t__ CFM_MAX_OFFSET ; 
 scalar_t__ EJUSTRETURN ; 
 scalar_t__ EPIPE ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 scalar_t__ FUNC2 (struct socket*) ; 
 scalar_t__ FUNC3 (struct socket*,struct cfil_info*,int,int) ; 
 scalar_t__ FUNC4 (struct socket*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct cfil_info*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int
FUNC9(struct socket *so, struct cfil_info *cfil_info, uint32_t kcunit, int outgoing,
	uint64_t pass_offset, uint64_t peek_offset)
{
	errno_t error = 0;
	struct cfil_entry *entry = NULL;
	struct cfe_buf *entrybuf;
	int updated = 0;

	FUNC1(LOG_INFO, "pass %llu peek %llu", pass_offset, peek_offset);

	FUNC7(so);

	if (cfil_info == NULL) {
		FUNC1(LOG_ERR, "so %llx cfil detached",
			(uint64_t)FUNC2(so));
		error = 0;
		goto done;
	} else if (cfil_info->cfi_flags & CFIF_DROP) {
		FUNC1(LOG_ERR, "so %llx drop set",
			(uint64_t)FUNC2(so));
		error = EPIPE;
		goto done;
	}

	entry = &cfil_info->cfi_entries[kcunit - 1];
	if (outgoing)
		entrybuf = &entry->cfe_snd;
	else
		entrybuf = &entry->cfe_rcv;

	/* Record updated offsets for this content filter */
	if (pass_offset > entrybuf->cfe_pass_offset) {
		entrybuf->cfe_pass_offset = pass_offset;

		if (entrybuf->cfe_peek_offset < entrybuf->cfe_pass_offset)
			entrybuf->cfe_peek_offset = entrybuf->cfe_pass_offset;
		updated = 1;
	} else {
		FUNC1(LOG_INFO, "pass_offset %llu <= cfe_pass_offset %llu",
			pass_offset, entrybuf->cfe_pass_offset);
	}
	/* Filter does not want or need to see data that's allowed to pass */
	if (peek_offset > entrybuf->cfe_pass_offset &&
		peek_offset > entrybuf->cfe_peek_offset) {
		entrybuf->cfe_peek_offset = peek_offset;
		updated = 1;
	}
	/* Nothing to do */
	if (updated == 0)
		goto done;

	/* Move data held in control queue to pending queue if needed */
	error = FUNC3(so, cfil_info, kcunit, outgoing);
	if (error != 0) {
		FUNC1(LOG_ERR, "cfil_data_service_ctl_q() error %d",
			error);
		goto done;
	}
	error = EJUSTRETURN;

done:
	/*
	 * The filter is effectively detached when pass all from both sides
	 * or when the socket is closed and no more data is waiting
	 * to be delivered to the filter
	 */
	if (entry != NULL &&
	    ((entry->cfe_snd.cfe_pass_offset == CFM_MAX_OFFSET &&
	    entry->cfe_rcv.cfe_pass_offset == CFM_MAX_OFFSET) ||
	    ((cfil_info->cfi_flags & CFIF_CLOSE_WAIT) &&
	    FUNC6(&entry->cfe_snd.cfe_ctl_q) &&
	    FUNC6(&entry->cfe_rcv.cfe_ctl_q)))) {
		entry->cfe_flags |= CFEF_CFIL_DETACHED;
#if LIFECYCLE_DEBUG
		cfil_info_log(LOG_ERR, cfil_info, outgoing ?
					 "CFIL: LIFECYCLE: OUT - PASSED ALL - DETACH":
					 "CFIL: LIFECYCLE: IN - PASSED ALL - DETACH");
#endif
		FUNC1(LOG_INFO, "so %llx detached %u",
			(uint64_t)FUNC2(so), kcunit);
		if ((cfil_info->cfi_flags & CFIF_CLOSE_WAIT) &&
		    FUNC4(so) == 0) {
#if LIFECYCLE_DEBUG
			cfil_info_log(LOG_ERR, cfil_info, "CFIL: LIFECYCLE: WAKING");
#endif
			FUNC1(LOG_INFO, "so %llx waking",
				(uint64_t)FUNC2(so));
			FUNC8((caddr_t)cfil_info);
		}
	}
	FUNC0(cfil_info);
	FUNC1(LOG_INFO, "return %d", error);
	return (error);
}