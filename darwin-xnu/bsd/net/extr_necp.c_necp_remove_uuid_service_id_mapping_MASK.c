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
typedef  int /*<<< orphan*/  uuid_t ;
struct necp_uuid_id_mapping {scalar_t__ refcount; } ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct necp_uuid_id_mapping*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_RW_ASSERT_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC2 (struct necp_uuid_id_mapping*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_NECP ; 
 int TRUE ; 
 int /*<<< orphan*/  chain ; 
 int /*<<< orphan*/  necp_kernel_policy_lock ; 
 struct necp_uuid_id_mapping* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC5(uuid_t uuid)
{
	struct necp_uuid_id_mapping *existing_mapping = NULL;

	if (FUNC4(uuid)) {
		return (TRUE);
	}

	FUNC1(&necp_kernel_policy_lock, LCK_RW_ASSERT_EXCLUSIVE);

	existing_mapping = FUNC3(uuid);
	if (existing_mapping != NULL) {
		if (--existing_mapping->refcount == 0) {
			FUNC2(existing_mapping, chain);
			FUNC0(existing_mapping, M_NECP);
		}
		return (TRUE);
	}

	return (FALSE);
}