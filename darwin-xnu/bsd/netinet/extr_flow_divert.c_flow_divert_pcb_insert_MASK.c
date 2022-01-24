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
typedef  size_t uint32_t ;
struct flow_divert_pcb {int /*<<< orphan*/  so; scalar_t__ hash; struct flow_divert_group* group; } ;
struct flow_divert_group {int /*<<< orphan*/  lck; int /*<<< orphan*/  pcb_tree; } ;
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENETUNREACH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct flow_divert_pcb*) ; 
 size_t GROUP_COUNT_MAX ; 
 int /*<<< orphan*/  LOG_ERR ; 
 struct flow_divert_pcb* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct flow_divert_pcb*) ; 
 struct flow_divert_pcb* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct flow_divert_pcb*) ; 
 size_t FUNC5 () ; 
 int /*<<< orphan*/  fd_pcb_tree ; 
 scalar_t__ g_active_group_count ; 
 int /*<<< orphan*/  g_flow_divert_group_lck ; 
 struct flow_divert_group** g_flow_divert_groups ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (size_t*,int,size_t) ; 
 int /*<<< orphan*/  nil_pcb ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static errno_t
FUNC12(struct flow_divert_pcb *fd_cb, uint32_t ctl_unit)
{
	errno_t							error						= 0;
	struct						flow_divert_pcb	*exist		= NULL;
	struct flow_divert_group	*group;
	static uint32_t				g_nextkey					= 1;
	static uint32_t				g_hash_seed					= 0;
	int							try_count					= 0;

	if (ctl_unit == 0 || ctl_unit >= GROUP_COUNT_MAX) {
		return EINVAL;
	}

	FUNC11(fd_cb->so, 0);
	FUNC8(&g_flow_divert_group_lck);

	if (g_flow_divert_groups == NULL || g_active_group_count == 0) {
		FUNC1(LOG_ERR, &nil_pcb, "No active groups, flow divert cannot be used for this socket");
		error = ENETUNREACH;
		goto done;
	}

	group = g_flow_divert_groups[ctl_unit];
	if (group == NULL) {
		FUNC0(LOG_ERR, &nil_pcb, "Group for control unit %u is NULL, flow divert cannot be used for this socket", ctl_unit);
		error = ENETUNREACH;
		goto done;
	}

	FUNC10(fd_cb->so, 0);

	do {
		uint32_t	key[2];
		uint32_t	idx;

		key[0] = g_nextkey++;
		key[1] = FUNC5();

		if (g_hash_seed == 0) {
			g_hash_seed = FUNC5();
		}

		fd_cb->hash = FUNC9(key, sizeof(key), g_hash_seed);

		for (idx = 1; idx < GROUP_COUNT_MAX; idx++) {
			struct flow_divert_group *curr_group = g_flow_divert_groups[idx];
			if (curr_group != NULL && curr_group != group) {
				FUNC8(&curr_group->lck);
				exist = FUNC3(fd_pcb_tree, &curr_group->pcb_tree, fd_cb);
				FUNC6(&curr_group->lck);
				if (exist != NULL) {
					break;
				}
			}
		}

		if (exist == NULL) {
			FUNC7(&group->lck);
			exist = FUNC4(fd_pcb_tree, &group->pcb_tree, fd_cb);
			FUNC6(&group->lck);
		}
	} while (exist != NULL && try_count++ < 3);

	if (exist == NULL) {
		fd_cb->group = group;
		FUNC2(fd_cb);		/* The group now has a reference */
	} else {
		fd_cb->hash = 0;
		error = EEXIST;
	}

	FUNC11(fd_cb->so, 0);

done:
	FUNC6(&g_flow_divert_group_lck);
	FUNC10(fd_cb->so, 0);

	return error;
}