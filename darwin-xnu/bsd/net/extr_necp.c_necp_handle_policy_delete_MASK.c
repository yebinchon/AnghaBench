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
struct necp_session_policy {scalar_t__ pending_deletion; } ;
struct necp_session {int dummy; } ;
typedef  int /*<<< orphan*/  policy_id ;
typedef  int necp_policy_id ;
typedef  int /*<<< orphan*/  mbuf_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  NECP_ERROR_INTERNAL ; 
 int /*<<< orphan*/  NECP_ERROR_INVALID_TLV ; 
 int /*<<< orphan*/  NECP_ERROR_POLICY_ID_NOT_FOUND ; 
 int /*<<< orphan*/  NECP_PACKET_TYPE_POLICY_DELETE ; 
 int /*<<< orphan*/  NECP_TLV_POLICY_ID ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ *) ; 
 struct necp_session_policy* FUNC2 (struct necp_session*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct necp_session*,struct necp_session_policy*) ; 
 int /*<<< orphan*/  FUNC4 (struct necp_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct necp_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct necp_session *session, u_int32_t message_id, mbuf_t packet, int offset)
{
	int error;
	u_int32_t response_error = NECP_ERROR_INTERNAL;
	necp_policy_id policy_id = 0;

	struct necp_session_policy *policy = NULL;

	// Read policy id
	error = FUNC1(packet, NULL, 0, offset, NECP_TLV_POLICY_ID, sizeof(policy_id), &policy_id, NULL);
	if (error) {
		FUNC0(LOG_ERR, "Failed to get policy id: %d", error);
		response_error = NECP_ERROR_INVALID_TLV;
		goto fail;
	}

	policy = FUNC2(session, policy_id);
	if (policy == NULL || policy->pending_deletion) {
		FUNC0(LOG_ERR, "Failed to find policy with id %d", policy_id);
		response_error = NECP_ERROR_POLICY_ID_NOT_FOUND;
		goto fail;
	}

	FUNC3(session, policy);

	FUNC5(session, NECP_PACKET_TYPE_POLICY_DELETE, message_id);
	return;

fail:
	FUNC4(session, NECP_PACKET_TYPE_POLICY_DELETE, message_id, response_error);
}