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
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct netagent_session {int dummy; } ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct netagent_session*) ; 

__attribute__((used)) static errno_t
FUNC2(struct netagent_session *session, u_int8_t *payload,
								  u_int32_t payload_length)
{
#pragma unused(payload, payload_length)
	u_int32_t response_error = 0;

	if (session == NULL) {
		FUNC0(LOG_ERR, "Failed to find session");
		response_error = EINVAL;
		goto done;
	}

	FUNC1(session);

done:
	return response_error;
}