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
typedef  int /*<<< orphan*/  use_count ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  u_int8_t ;
struct netagent_session {TYPE_1__* wrapper; } ;
typedef  int /*<<< orphan*/  errno_t ;
struct TYPE_2__ {int /*<<< orphan*/  use_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  netagent_lock ; 

errno_t
FUNC5(struct netagent_session *session, u_int8_t *payload, size_t payload_length)
{
	errno_t response_error = 0;
	uint64_t use_count = 0;

	if (session == NULL) {
		FUNC1(LOG_ERR, "Failed to find session");
		response_error = ENOENT;
		goto done;
	}

	if (payload == NULL) {
		FUNC1(LOG_ERR, "No payload received");
		response_error = EINVAL;
		goto done;
	}

	if (payload_length != sizeof(use_count)) {
		FUNC0(LOG_ERR, "Payload length is invalid (%lu)", payload_length);
		response_error = EINVAL;
		goto done;
	}

	FUNC4(&use_count, payload, sizeof(use_count));

	FUNC3(&netagent_lock);

	if (session->wrapper == NULL) {
		FUNC1(LOG_ERR, "Session has no agent registered");
		response_error = ENOENT;
		FUNC2(&netagent_lock);
		goto done;
	}

	session->wrapper->use_count = use_count;

	FUNC2(&netagent_lock);

done:
	return response_error;
}