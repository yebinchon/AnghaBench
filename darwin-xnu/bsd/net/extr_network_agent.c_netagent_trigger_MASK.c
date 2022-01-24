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
struct proc {int dummy; } ;
struct TYPE_2__ {int netagent_flags; } ;
struct netagent_wrapper {TYPE_1__ netagent; } ;
struct netagent_trigger_args {int agent_uuidlen; scalar_t__ agent_uuid; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOTSUP ; 
 int ERANGE ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int NETAGENT_FLAG_ACTIVE ; 
 int NETAGENT_FLAG_USER_ACTIVATED ; 
 int /*<<< orphan*/  NETAGENT_MESSAGE_TYPE_TRIGGER ; 
 int /*<<< orphan*/  NETAGENT_TRIGGER_FLAG_USER ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct netagent_wrapper* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netagent_lock ; 
 int FUNC6 (struct netagent_wrapper*,struct proc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

int
FUNC8(struct proc *p, struct netagent_trigger_args *uap, int32_t *retval)
{
#pragma unused(p, retval)
	uuid_t agent_uuid;
	int error = 0;

	if (uap == NULL) {
		FUNC1(LOG_ERR, "uap == NULL");
		return (EINVAL);
	}

	if (uap->agent_uuid) {
		if (uap->agent_uuidlen != sizeof(uuid_t)) {
			FUNC0(LOG_ERR, "Incorrect length (got %llu, expected %lu)",
						uap->agent_uuidlen, sizeof(uuid_t));
			return (ERANGE);
		}

		error = FUNC2(uap->agent_uuid, agent_uuid, sizeof(uuid_t));
		if (error) {
			FUNC0(LOG_ERR, "copyin error (%d)", error);
			return (error);
		}
	}

	if (FUNC7(agent_uuid)) {
		FUNC1(LOG_ERR, "Requested netagent UUID is empty");
		return (EINVAL);
	}

	FUNC4(&netagent_lock);
	struct netagent_wrapper *wrapper = FUNC5(agent_uuid);
	if (wrapper == NULL) {
		FUNC1(LOG_ERR, "Requested netagent UUID is not registered");
		error = ENOENT;
		goto done;
	}

	if ((wrapper->netagent.netagent_flags & NETAGENT_FLAG_USER_ACTIVATED) == 0) {
		// Agent does not accept triggers
		FUNC1(LOG_ERR, "Requested netagent UUID is not eligible for triggering");
		error = ENOTSUP;
		goto done;
	}

	if ((wrapper->netagent.netagent_flags & NETAGENT_FLAG_ACTIVE)) {
		// Agent already active
		FUNC1(LOG_INFO, "Requested netagent UUID is already active");
		error = 0;
		goto done;
	}

	error = FUNC6(wrapper, p, NETAGENT_TRIGGER_FLAG_USER, NETAGENT_MESSAGE_TYPE_TRIGGER);
	FUNC0((error ? LOG_ERR : LOG_INFO), "Triggered netagent (error %d)", error);
done:
	FUNC3(&netagent_lock);
	return (error);
}