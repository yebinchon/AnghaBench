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
typedef  int /*<<< orphan*/ * task_t ;
struct necp_socket_info {int /*<<< orphan*/  cred_result; } ;
typedef  int /*<<< orphan*/ * proc_t ;
typedef  int /*<<< orphan*/ * kauth_cred_t ;
typedef  int /*<<< orphan*/  errno_t ;
typedef  int /*<<< orphan*/ * coalition_t ;
typedef  scalar_t__ Boolean ;

/* Variables and functions */
 int /*<<< orphan*/ * COALITION_NULL ; 
 int /*<<< orphan*/  COALITION_TYPE_JETSAM ; 
 int /*<<< orphan*/  PRIV_NET_PRIVILEGED_NECP_MATCH ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC9(proc_t proc, struct necp_socket_info *info)
{
	task_t task = FUNC7(proc ? proc : FUNC2());
	coalition_t coal = COALITION_NULL;
	Boolean is_leader = FUNC1(task, COALITION_TYPE_JETSAM, &coal);

	if (is_leader == TRUE) {
		// No parent, nothing to do
		return;
	}

	if (coal != NULL) {
		task_t lead_task = FUNC0(coal);
		if (lead_task != NULL) {
			proc_t lead_proc = FUNC3(lead_task);
			if (lead_proc != NULL) {
				kauth_cred_t lead_cred = FUNC4(lead_proc);
				if (lead_cred != NULL) {
					errno_t cred_result = FUNC6(lead_cred, PRIV_NET_PRIVILEGED_NECP_MATCH, 0);
					FUNC5(&lead_cred);
					info->cred_result = cred_result;
				}
			}
			FUNC8(lead_task);
		}
	}
}