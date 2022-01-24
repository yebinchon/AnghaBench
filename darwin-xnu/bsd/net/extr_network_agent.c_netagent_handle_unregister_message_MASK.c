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
typedef  int /*<<< orphan*/  u_int32_t ;
struct netagent_session {int dummy; } ;
typedef  int /*<<< orphan*/  mbuf_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NETAGENT_MESSAGE_ERROR_INTERNAL ; 
 int /*<<< orphan*/  NETAGENT_MESSAGE_TYPE_UNREGISTER ; 
 int /*<<< orphan*/  FUNC1 (struct netagent_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct netagent_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct netagent_session*) ; 

__attribute__((used)) static void
FUNC4(struct netagent_session *session, u_int32_t message_id,
								   u_int32_t payload_length, mbuf_t packet, int offset)
{
#pragma unused(payload_length, packet, offset)
	u_int32_t response_error = NETAGENT_MESSAGE_ERROR_INTERNAL;

	if (session == NULL) {
		FUNC0(LOG_ERR, "Failed to find session");
		response_error = NETAGENT_MESSAGE_ERROR_INTERNAL;
		goto fail;
	}

	FUNC3(session);

	FUNC2(session, NETAGENT_MESSAGE_TYPE_UNREGISTER, message_id);
	return;
fail:
	FUNC1(session, NETAGENT_MESSAGE_TYPE_UNREGISTER, message_id, response_error);
}