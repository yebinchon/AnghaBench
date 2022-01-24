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
typedef  int /*<<< orphan*/  uuid_t ;
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  scalar_t__ u_int32_t ;
struct TYPE_2__ {scalar_t__ netagent_data_size; } ;
struct netagent_wrapper {TYPE_1__ netagent; } ;
struct netagent {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct netagent_wrapper* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netagent_lock ; 

int
FUNC6(uuid_t agent_uuid, user_addr_t user_addr, u_int32_t user_size)
{
	int error = 0;

	FUNC4(&netagent_lock);
	struct netagent_wrapper *wrapper = FUNC5(agent_uuid);
	if (wrapper == NULL) {
		FUNC1(LOG_DEBUG, "Requested netagent for nexus instance could not be found");
		error = ENOENT;
		goto done;
	}

	u_int32_t total_size = (sizeof(struct netagent) + wrapper->netagent.netagent_data_size);
	if (user_size < total_size) {
		FUNC0(LOG_ERR, "Provided user buffer is too small (%u < %u)", user_size, total_size);
		error = EINVAL;
		goto done;
	}

	error = FUNC2(&wrapper->netagent, user_addr, total_size);

	FUNC0((error ? LOG_ERR : LOG_DEBUG), "Copied agent content (error %d)", error);
done:
	FUNC3(&netagent_lock);
	return (error);
}