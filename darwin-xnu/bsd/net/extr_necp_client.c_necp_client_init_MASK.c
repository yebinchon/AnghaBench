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
struct necp_fd_data {int dummy; } ;
struct necp_client_flow_registration {int dummy; } ;
struct necp_client_flow {int dummy; } ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MCR_SLEEP ; 
 int NECP_CLIENT_FD_ZONE_MAX ; 
 int /*<<< orphan*/  NECP_CLIENT_FD_ZONE_NAME ; 
 int /*<<< orphan*/  NECP_FLOW_REGISTRATION_ZONE_NAME ; 
 int /*<<< orphan*/  NECP_FLOW_ZONE_NAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  THREAD_CALL_OPTIONS_ONCE ; 
 int /*<<< orphan*/  THREAD_CALL_PRIORITY_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int necp_client_fd_size ; 
 int /*<<< orphan*/ * necp_client_fd_zone ; 
 int /*<<< orphan*/  necp_client_flow_global_tree ; 
 int /*<<< orphan*/  necp_client_global_tree ; 
 int /*<<< orphan*/  necp_client_tree_lock ; 
 int /*<<< orphan*/ * necp_client_update_tcall ; 
 int /*<<< orphan*/  necp_collect_stats_flow_list ; 
 int /*<<< orphan*/  necp_collect_stats_list_lock ; 
 int /*<<< orphan*/ * necp_fd_grp_attr ; 
 int /*<<< orphan*/  necp_fd_list ; 
 int /*<<< orphan*/  necp_fd_lock ; 
 int /*<<< orphan*/ * necp_fd_mtx_attr ; 
 int /*<<< orphan*/ * necp_fd_mtx_grp ; 
 int /*<<< orphan*/  necp_fd_observer_list ; 
 int /*<<< orphan*/ * necp_flow_cache ; 
 int /*<<< orphan*/ * necp_flow_registration_cache ; 
 int necp_flow_registration_size ; 
 int necp_flow_size ; 
 int /*<<< orphan*/  necp_flow_tree_lock ; 
 int /*<<< orphan*/  necp_observer_lock ; 
 int /*<<< orphan*/  necp_update_all_clients_callout ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

errno_t
FUNC11(void)
{
	necp_fd_grp_attr = FUNC5();
	if (necp_fd_grp_attr == NULL) {
		FUNC8("lck_grp_attr_alloc_init failed\n");
		/* NOTREACHED */
	}

	necp_fd_mtx_grp = FUNC4("necp_fd", necp_fd_grp_attr);
	if (necp_fd_mtx_grp == NULL) {
		FUNC8("lck_grp_alloc_init failed\n");
		/* NOTREACHED */
	}

	necp_fd_mtx_attr = FUNC3();
	if (necp_fd_mtx_attr == NULL) {
		FUNC8("lck_attr_alloc_init failed\n");
		/* NOTREACHED */
	}

	necp_client_fd_size = sizeof(struct necp_fd_data);
	necp_client_fd_zone = FUNC10(necp_client_fd_size,
								NECP_CLIENT_FD_ZONE_MAX * necp_client_fd_size,
								0, NECP_CLIENT_FD_ZONE_NAME);
	if (necp_client_fd_zone == NULL) {
		FUNC8("zinit(necp_client_fd) failed\n");
		/* NOTREACHED */
	}

	necp_flow_size = sizeof(struct necp_client_flow);
	necp_flow_cache = FUNC7(NECP_FLOW_ZONE_NAME, necp_flow_size, sizeof (uint64_t), 0, MCR_SLEEP);
	if (necp_flow_cache == NULL) {
		FUNC8("mcache_create(necp_flow_cache) failed\n");
		/* NOTREACHED */
	}

	necp_flow_registration_size = sizeof(struct necp_client_flow_registration);
	necp_flow_registration_cache = FUNC7(NECP_FLOW_REGISTRATION_ZONE_NAME, necp_flow_registration_size, sizeof (uint64_t), 0, MCR_SLEEP);
	if (necp_flow_registration_cache == NULL) {
		FUNC8("mcache_create(necp_client_flow_registration) failed\n");
		/* NOTREACHED */
	}

	necp_client_update_tcall = FUNC9(necp_update_all_clients_callout, NULL,
																 THREAD_CALL_PRIORITY_KERNEL, THREAD_CALL_OPTIONS_ONCE);
	FUNC2(necp_client_update_tcall != NULL);

	FUNC6(&necp_fd_lock, necp_fd_mtx_grp, necp_fd_mtx_attr);
	FUNC6(&necp_observer_lock, necp_fd_mtx_grp, necp_fd_mtx_attr);
	FUNC6(&necp_client_tree_lock, necp_fd_mtx_grp, necp_fd_mtx_attr);
    FUNC6(&necp_flow_tree_lock, necp_fd_mtx_grp, necp_fd_mtx_attr);
	FUNC6(&necp_collect_stats_list_lock, necp_fd_mtx_grp, necp_fd_mtx_attr);

	FUNC0(&necp_fd_list);
	FUNC0(&necp_fd_observer_list);
	FUNC0(&necp_collect_stats_flow_list);

	FUNC1(&necp_client_global_tree);
	FUNC1(&necp_client_flow_global_tree);

	return (0);
}