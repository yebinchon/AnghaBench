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
struct socket {int so_gencnt; struct cfil_info* so_cfil; } ;
struct inpcb {int inp_flowhash; } ;
struct TYPE_7__ {int /*<<< orphan*/  cfi_inject_q; } ;
struct TYPE_6__ {int /*<<< orphan*/  cfi_inject_q; } ;
struct cfil_info {int cfi_sock_id; struct cfil_hash_entry* cfi_hash_entry; struct socket* cfi_so; struct cfil_entry* cfi_entries; TYPE_2__ cfi_rcv; TYPE_1__ cfi_snd; } ;
struct cfil_hash_entry {int cfentry_flowhash; struct cfil_info* cfentry_cfil; } ;
struct TYPE_9__ {int /*<<< orphan*/  cfe_ctl_q; int /*<<< orphan*/  cfe_pending_q; scalar_t__ cfe_peeked; scalar_t__ cfe_peek_offset; scalar_t__ cfe_pass_offset; } ;
struct TYPE_8__ {int /*<<< orphan*/  cfe_ctl_q; int /*<<< orphan*/  cfe_pending_q; scalar_t__ cfe_peeked; scalar_t__ cfe_peek_offset; scalar_t__ cfe_pass_offset; } ;
struct cfil_entry {TYPE_4__ cfe_rcv; TYPE_3__ cfe_snd; int /*<<< orphan*/  cfe_last_action; scalar_t__ cfe_necp_control_unit; scalar_t__ cfe_flags; int /*<<< orphan*/ * cfe_filter; struct cfil_info* cfe_cfil_info; } ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_10__ {int /*<<< orphan*/  cfs_cfi_alloc_fail; int /*<<< orphan*/  cfs_cfi_alloc_ok; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int MAX_CONTENT_FILTER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct cfil_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cfil_info*,int) ; 
 int /*<<< orphan*/  cfi_link ; 
 int /*<<< orphan*/  cfil_info_zone ; 
 int /*<<< orphan*/  cfil_lck_rw ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cfil_sock_attached_count ; 
 int /*<<< orphan*/  cfil_sock_head ; 
 scalar_t__ cfil_sock_udp_attached_count ; 
 TYPE_5__ cfil_stats ; 
 int FUNC7 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct socket*) ; 
 struct inpcb* FUNC10 (struct socket*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 struct cfil_info* FUNC12 (int /*<<< orphan*/ ) ; 

struct cfil_info *
FUNC13(struct socket *so, struct cfil_hash_entry *hash_entry)
{
	int kcunit;
	struct cfil_info *cfil_info = NULL;
	struct inpcb *inp = FUNC10(so);

	FUNC0(LOG_INFO, "");

	FUNC9(so);

	cfil_info = FUNC12(cfil_info_zone);
	if (cfil_info == NULL)
		goto done;
	FUNC3(cfil_info, sizeof(struct cfil_info));

	FUNC4(&cfil_info->cfi_snd.cfi_inject_q);
	FUNC4(&cfil_info->cfi_rcv.cfi_inject_q);

	for (kcunit = 1; kcunit <= MAX_CONTENT_FILTER; kcunit++) {
		struct cfil_entry *entry;

		entry = &cfil_info->cfi_entries[kcunit - 1];
		entry->cfe_cfil_info = cfil_info;

		/* Initialize the filter entry */
		entry->cfe_filter = NULL;
		entry->cfe_flags = 0;
		entry->cfe_necp_control_unit = 0;
		entry->cfe_snd.cfe_pass_offset = 0;
		entry->cfe_snd.cfe_peek_offset = 0;
		entry->cfe_snd.cfe_peeked = 0;
		entry->cfe_rcv.cfe_pass_offset = 0;
		entry->cfe_rcv.cfe_peek_offset = 0;
		entry->cfe_rcv.cfe_peeked = 0;
		/*
		 * Timestamp the last action to avoid pre-maturely
		 * triggering garbage collection
		 */
		FUNC8(&entry->cfe_last_action);

		FUNC4(&entry->cfe_snd.cfe_pending_q);
		FUNC4(&entry->cfe_rcv.cfe_pending_q);
		FUNC4(&entry->cfe_snd.cfe_ctl_q);
		FUNC4(&entry->cfe_rcv.cfe_ctl_q);
	}

	FUNC5(&cfil_lck_rw);
    
	/*
	 * Create a cfi_sock_id that's not the socket pointer!
	 */
    
    if (hash_entry == NULL) {
		// This is the TCP case, cfil_info is tracked per socket
        if (inp->inp_flowhash == 0)
            inp->inp_flowhash = FUNC7(inp);
        
        so->so_cfil = cfil_info;
        cfil_info->cfi_so = so;
        cfil_info->cfi_sock_id =
        ((so->so_gencnt << 32) | inp->inp_flowhash);
    } else {
        // This is the UDP case, cfil_info is tracked in per-socket hash
		cfil_info->cfi_so = so;
        hash_entry->cfentry_cfil = cfil_info;
		cfil_info->cfi_hash_entry = hash_entry;
        cfil_info->cfi_sock_id = ((so->so_gencnt << 32) | (hash_entry->cfentry_flowhash & 0xffffffff));
		FUNC0(LOG_DEBUG, "CFIL: UDP inp_flowhash %x so_gencnt %llx entry flowhash %x sockID %llx",
                 inp->inp_flowhash, so->so_gencnt, hash_entry->cfentry_flowhash, cfil_info->cfi_sock_id);

		// Wake up gc thread if this is first flow added
		if (cfil_sock_udp_attached_count == 0) {
			FUNC11((caddr_t)&cfil_sock_udp_attached_count);
		}

		cfil_sock_udp_attached_count++;
    }

	FUNC2(&cfil_sock_head, cfil_info, cfi_link);

	cfil_sock_attached_count++;

	FUNC6(&cfil_lck_rw);

done:
	if (cfil_info != NULL)
		FUNC1(&cfil_stats.cfs_cfi_alloc_ok);
	else
		FUNC1(&cfil_stats.cfs_cfi_alloc_fail);

	return (cfil_info);
}