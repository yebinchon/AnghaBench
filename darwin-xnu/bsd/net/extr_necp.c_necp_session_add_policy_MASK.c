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
struct necp_session_action_args {int in_buffer_length; scalar_t__ in_buffer; int out_buffer_length; int /*<<< orphan*/  out_buffer; } ;
struct necp_session {int dummy; } ;
typedef  int /*<<< orphan*/  new_policy_id ;
typedef  int /*<<< orphan*/  necp_policy_id ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  M_NECP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int NECP_MAX_POLICY_SIZE ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct necp_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int
FUNC6(struct necp_session *session, struct necp_session_action_args *uap, int *retval)
{
	int error = 0;
	u_int8_t *tlv_buffer = NULL;

	if (uap->in_buffer_length == 0 || uap->in_buffer_length > NECP_MAX_POLICY_SIZE || uap->in_buffer == 0) {
		FUNC1(LOG_ERR, "necp_session_add_policy invalid input (%zu)", uap->in_buffer_length);
		error = EINVAL;
		goto done;
	}

	if (uap->out_buffer_length < sizeof(necp_policy_id) || uap->out_buffer == 0) {
		FUNC1(LOG_ERR, "necp_session_add_policy invalid output buffer (%zu)", uap->out_buffer_length);
		error = EINVAL;
		goto done;
	}

	if ((tlv_buffer = FUNC2(uap->in_buffer_length, M_NECP, M_WAITOK | M_ZERO)) == NULL) {
		error = ENOMEM;
		goto done;
	}

	error = FUNC3(uap->in_buffer, tlv_buffer, uap->in_buffer_length);
	if (error != 0) {
		FUNC1(LOG_ERR, "necp_session_add_policy tlv copyin error (%d)", error);
		goto done;
	}

	necp_policy_id new_policy_id = FUNC5(session, 0, NULL, tlv_buffer, uap->in_buffer_length, 0, &error);
	if (error != 0) {
		FUNC1(LOG_ERR, "necp_session_add_policy failed to add policy (%d)", error);
		goto done;
	}

	error = FUNC4(&new_policy_id, uap->out_buffer, sizeof(new_policy_id));
	if (error != 0) {
		FUNC1(LOG_ERR, "necp_session_add_policy policy_id copyout error (%d)", error);
		goto done;
	}

done:
	if (tlv_buffer != NULL) {
		FUNC0(tlv_buffer, M_NECP);
		tlv_buffer = NULL;
	}
	*retval = error;

	return (error);
}