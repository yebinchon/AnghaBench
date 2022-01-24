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
typedef  int /*<<< orphan*/  uint64_t ;
struct netagent_wrapper {int /*<<< orphan*/  use_count; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct netagent_wrapper* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netagent_lock ; 

int
FUNC4(uuid_t agent_uuid, uint64_t *out_use_count)
{
	int error = 0;

	FUNC2(&netagent_lock);
	struct netagent_wrapper *wrapper = FUNC3(agent_uuid);
	if (wrapper == NULL) {
		FUNC0(LOG_ERR, "netagent_assert: Requested netagent UUID is not registered");
		error = ENOENT;
		goto done;
	}

	uint64_t current_count = wrapper->use_count;
	wrapper->use_count++;

	if (out_use_count != NULL) {
		*out_use_count = current_count;
	}

done:
	FUNC1(&netagent_lock);
	return (error);
}