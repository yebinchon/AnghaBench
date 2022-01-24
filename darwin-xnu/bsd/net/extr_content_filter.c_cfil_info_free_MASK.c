#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct content_filter {int /*<<< orphan*/  cf_sock_count; int /*<<< orphan*/  cf_sock_entries; } ;
struct TYPE_9__ {int /*<<< orphan*/  cfe_ctl_q; int /*<<< orphan*/  cfe_pending_q; } ;
struct TYPE_8__ {int /*<<< orphan*/  cfe_ctl_q; int /*<<< orphan*/  cfe_pending_q; } ;
struct TYPE_7__ {int /*<<< orphan*/  cfi_inject_q; } ;
struct TYPE_6__ {int /*<<< orphan*/  cfi_inject_q; } ;
struct cfil_info {TYPE_4__ cfe_rcv; TYPE_3__ cfe_snd; struct cfil_info* cfi_entries; TYPE_2__ cfi_rcv; TYPE_1__ cfi_snd; int /*<<< orphan*/ * cfi_hash_entry; scalar_t__ cfe_necp_control_unit; struct content_filter* cfe_filter; } ;
struct cfil_entry {TYPE_4__ cfe_rcv; TYPE_3__ cfe_snd; struct cfil_entry* cfi_entries; TYPE_2__ cfi_rcv; TYPE_1__ cfi_snd; int /*<<< orphan*/ * cfi_hash_entry; scalar_t__ cfe_necp_control_unit; struct content_filter* cfe_filter; } ;
struct TYPE_10__ {int /*<<< orphan*/  cfs_flush_in_free; int /*<<< orphan*/  cfs_flush_out_free; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int MAX_CONTENT_FILTER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct cfil_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  cfe_link ; 
 int /*<<< orphan*/  cfi_link ; 
 int /*<<< orphan*/  cfil_info_zone ; 
 int /*<<< orphan*/  cfil_lck_rw ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cfil_sock_attached_count ; 
 int /*<<< orphan*/  cfil_sock_head ; 
 int /*<<< orphan*/  cfil_sock_udp_attached_count ; 
 TYPE_5__ cfil_stats ; 
 struct content_filter** content_filters ; 
 int /*<<< orphan*/  FUNC7 (struct content_filter*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct cfil_info*) ; 

__attribute__((used)) static void
FUNC9(struct cfil_info *cfil_info)
{
	int kcunit;
	uint64_t in_drain = 0;
	uint64_t out_drained = 0;

	if (cfil_info == NULL)
		return;

	FUNC0(LOG_INFO, "");

	FUNC5(&cfil_lck_rw);

	for (kcunit = 1;
		content_filters != NULL && kcunit <= MAX_CONTENT_FILTER;
		kcunit++) {
		struct cfil_entry *entry;
		struct content_filter *cfc;

		entry = &cfil_info->cfi_entries[kcunit - 1];

		/* Don't be silly and try to detach twice */
		if (entry->cfe_filter == NULL)
			continue;

		cfc = content_filters[kcunit - 1];

		FUNC3(cfc == entry->cfe_filter);

		entry->cfe_filter = NULL;
		entry->cfe_necp_control_unit = 0;
		FUNC2(&cfc->cf_sock_entries, entry, cfe_link);
		cfc->cf_sock_count--;

		FUNC7(cfc);
	}
	if (cfil_info->cfi_hash_entry != NULL)
		cfil_sock_udp_attached_count--;
	cfil_sock_attached_count--;
	FUNC2(&cfil_sock_head, cfil_info, cfi_link);

	out_drained += FUNC4(&cfil_info->cfi_snd.cfi_inject_q);
	in_drain += FUNC4(&cfil_info->cfi_rcv.cfi_inject_q);

	for (kcunit = 1; kcunit <= MAX_CONTENT_FILTER; kcunit++) {
		struct cfil_entry *entry;

		entry = &cfil_info->cfi_entries[kcunit - 1];
		out_drained += FUNC4(&entry->cfe_snd.cfe_pending_q);
		in_drain += FUNC4(&entry->cfe_rcv.cfe_pending_q);
		out_drained += FUNC4(&entry->cfe_snd.cfe_ctl_q);
		in_drain += FUNC4(&entry->cfe_rcv.cfe_ctl_q);
	}
	FUNC6(&cfil_lck_rw);

	if (out_drained)
		FUNC1(&cfil_stats.cfs_flush_out_free);
	if (in_drain)
		FUNC1(&cfil_stats.cfs_flush_in_free);

	FUNC8(cfil_info_zone, cfil_info);
}