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
typedef  int u_int32_t ;
struct necp_client_parsed_parameters {int valid_fields; int flags; int /*<<< orphan*/  effective_uuid; int /*<<< orphan*/  traffic_class; int /*<<< orphan*/  ip_protocol; int /*<<< orphan*/  remote_addr; int /*<<< orphan*/  local_addr; int /*<<< orphan*/  effective_pid; } ;
struct necp_client_nexus_parameters {int local_addr; int remote_addr; int is_listener; int allow_qos_marking; int /*<<< orphan*/  policy_id; int /*<<< orphan*/  euuid; int /*<<< orphan*/  traffic_class; int /*<<< orphan*/  ip_protocol; int /*<<< orphan*/  pid; int /*<<< orphan*/  epid; } ;
struct necp_client {int /*<<< orphan*/  result; int /*<<< orphan*/  policy_id; int /*<<< orphan*/  proc_pid; scalar_t__ parameters_length; int /*<<< orphan*/  parameters; } ;
typedef  int /*<<< orphan*/  client_result_flags ;

/* Variables and functions */
 int NECP_CLIENT_PARAMETER_FLAG_LISTENER ; 
 int NECP_CLIENT_RESULT_FLAG_ALLOW_QOS_MARKING ; 
 int NECP_PARSED_PARAMETERS_FIELD_EFFECTIVE_PID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,struct necp_client_parsed_parameters*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct necp_client *client,
								   struct necp_client_nexus_parameters *parameters)
{
	FUNC0(parameters != NULL);

	struct necp_client_parsed_parameters parsed_parameters = {};
	int error = FUNC3(client->parameters, (u_int32_t)client->parameters_length, &parsed_parameters);

	parameters->pid = client->proc_pid;
	if (parsed_parameters.valid_fields & NECP_PARSED_PARAMETERS_FIELD_EFFECTIVE_PID) {
		parameters->epid = parsed_parameters.effective_pid;
	} else {
		parameters->epid = parameters->pid;
	}
	FUNC1(&parameters->local_addr, &parsed_parameters.local_addr, sizeof(parameters->local_addr));
	FUNC1(&parameters->remote_addr, &parsed_parameters.remote_addr, sizeof(parameters->remote_addr));
	parameters->ip_protocol = parsed_parameters.ip_protocol;
	parameters->traffic_class = parsed_parameters.traffic_class;
	FUNC4(parameters->euuid, parsed_parameters.effective_uuid);
	parameters->is_listener = (parsed_parameters.flags & NECP_CLIENT_PARAMETER_FLAG_LISTENER) ? 1 : 0;
	parameters->policy_id = client->policy_id;

	// parse client result flag
	u_int32_t client_result_flags = 0;
	u_int32_t value_size = 0;
	u_int8_t *flags_pointer = NULL;
	flags_pointer = FUNC2(client->result, 0, &value_size);
	if (flags_pointer && value_size == sizeof(client_result_flags)) {
		FUNC1(&client_result_flags, flags_pointer, value_size);
	}
	parameters->allow_qos_marking = (client_result_flags & NECP_CLIENT_RESULT_FLAG_ALLOW_QOS_MARKING) ? 1 : 0;

	return (error);
}