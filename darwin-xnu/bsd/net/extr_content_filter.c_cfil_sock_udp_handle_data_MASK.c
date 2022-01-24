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
struct sockaddr {int dummy; } ;
struct mbuf {scalar_t__ m_type; } ;
struct cfil_info {int cfi_flags; } ;
struct cfil_hash_entry {struct cfil_info* cfentry_cfil; int /*<<< orphan*/  cfentry_lastused; } ;
typedef  int /*<<< orphan*/  errno_t ;
struct TYPE_2__ {int /*<<< orphan*/  cfs_data_in_oob; int /*<<< orphan*/  cfs_data_in_control; int /*<<< orphan*/  cfs_sock_userspace_only; int /*<<< orphan*/  cfs_sock_attach_in_vain; } ;

/* Variables and functions */
 int CFIF_DROP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  EPIPE ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 scalar_t__ MT_OOBDATA ; 
 int NECP_MASK_USERSPACE_ONLY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct socket*) ; 
 scalar_t__ cfil_active_count ; 
 int /*<<< orphan*/  FUNC3 (struct socket*,struct cfil_info*,int,struct sockaddr*,struct mbuf*,struct mbuf*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct socket*,struct cfil_hash_entry*,int /*<<< orphan*/ ,char*) ; 
 struct cfil_hash_entry* FUNC5 (struct socket*,int,int,struct sockaddr*,struct sockaddr*) ; 
 TYPE_1__ cfil_stats ; 
 int FUNC6 (struct socket*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct socket*) ; 

errno_t
FUNC9(bool outgoing, struct socket *so,
                          struct sockaddr *local, struct sockaddr *remote,
                          struct mbuf *data, struct mbuf *control, uint32_t flags)
{
#pragma unused(outgoing, so, local, remote, data, control, flags)
    errno_t error = 0;
    uint32_t filter_control_unit;
	struct cfil_hash_entry *hash_entry = NULL;
	struct cfil_info *cfil_info = NULL;

    FUNC8(so);

    if (cfil_active_count == 0) {
        FUNC0(LOG_DEBUG, "CFIL: UDP no active filter");
        FUNC1(&cfil_stats.cfs_sock_attach_in_vain);
        return (error);
    }
    
    filter_control_unit = FUNC6(so);
    if (filter_control_unit == 0) {
        FUNC0(LOG_DEBUG, "CFIL: UDP failed to get control unit");
        return (error);
    }

    if ((filter_control_unit & NECP_MASK_USERSPACE_ONLY) != 0) {
        FUNC0(LOG_DEBUG, "CFIL: UDP user space only");
        FUNC1(&cfil_stats.cfs_sock_userspace_only);
        return (error);
    }
	
    hash_entry = FUNC5(so, filter_control_unit, outgoing, local, remote);
    if (hash_entry == NULL || hash_entry->cfentry_cfil == NULL) {
		FUNC0(LOG_ERR, "CFIL: Falied to create UDP flow");
        return (EPIPE);
    }
	// Update last used timestamp, this is for flow Idle TO
	hash_entry->cfentry_lastused = FUNC7();
	cfil_info = hash_entry->cfentry_cfil;

	if (cfil_info->cfi_flags & CFIF_DROP) {
#if DATA_DEBUG
		cfil_hash_entry_log(LOG_DEBUG, so, hash_entry, 0, "CFIL: UDP DROP");
#endif
		return (EPIPE);
	}
	if (control != NULL) {
		FUNC1(&cfil_stats.cfs_data_in_control);
	}
	if (data->m_type == MT_OOBDATA) {
		FUNC0(LOG_ERR, "so %llx MSG_OOB",
				 (uint64_t)FUNC2(so));
		FUNC1(&cfil_stats.cfs_data_in_oob);
	}

	error = FUNC3(so, cfil_info, outgoing, remote, data, control, flags);

	return (error);
}