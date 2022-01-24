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
struct socket {int /*<<< orphan*/  so_flags1; struct cfil_info* so_cfil; int /*<<< orphan*/ * so_cfil_db; } ;
struct cfil_msg_hdr {int /*<<< orphan*/  cfm_sock_id; } ;
struct cfil_msg_bless_client {int /*<<< orphan*/  cfb_client_uuid; } ;
struct cfil_info {int /*<<< orphan*/  cfi_sock_id; scalar_t__ cfi_hash_entry; } ;
typedef  int errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CFM_MAX_OFFSET ; 
 int ENOENT ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  SOF1_CONTENT_FILTER_SKIP ; 
 scalar_t__ FUNC1 (struct socket*) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,struct cfil_info*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cfil_info* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct socket* FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*,int) ; 

int
FUNC6(uint32_t kcunit, struct cfil_msg_hdr *msghdr)
{
	errno_t error = 0;
	struct cfil_info *cfil_info = NULL;

	bool cfil_attached = false;
	struct cfil_msg_bless_client *blessmsg = (struct cfil_msg_bless_client *)msghdr;

	// Search and lock socket
	struct socket *so = FUNC4(blessmsg->cfb_client_uuid, &cfil_attached);
	if (so == NULL) {
		error = ENOENT;
	} else {
		// The client gets a pass automatically
		cfil_info = (so->so_cfil_db != NULL) ?
			FUNC3(so->so_cfil_db, msghdr->cfm_sock_id) : so->so_cfil;

		if (cfil_attached) {
#if VERDICT_DEBUG
			if (cfil_info != NULL) {
				CFIL_LOG(LOG_ERR, "CFIL: VERDICT RECEIVED: BLESS %s <so %llx sockID %llu>",
						 cfil_info->cfi_hash_entry ? "UDP" : "TCP",
						 (uint64_t)VM_KERNEL_ADDRPERM(so),
						 cfil_info->cfi_sock_id);
			}
#endif
			(void)FUNC2(so, cfil_info, kcunit, 1, CFM_MAX_OFFSET, CFM_MAX_OFFSET);
			(void)FUNC2(so, cfil_info, kcunit, 0, CFM_MAX_OFFSET, CFM_MAX_OFFSET);
		} else {
			so->so_flags1 |= SOF1_CONTENT_FILTER_SKIP;
		}
		FUNC5(so, 1);
	}

	return (error);
}