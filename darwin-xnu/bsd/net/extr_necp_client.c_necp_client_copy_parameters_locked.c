
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
struct necp_client_parsed_parameters {int valid_fields; int flags; int effective_uuid; int traffic_class; int ip_protocol; int remote_addr; int local_addr; int effective_pid; } ;
struct necp_client_nexus_parameters {int local_addr; int remote_addr; int is_listener; int allow_qos_marking; int policy_id; int euuid; int traffic_class; int ip_protocol; int pid; int epid; } ;
struct necp_client {int result; int policy_id; int proc_pid; scalar_t__ parameters_length; int parameters; } ;
typedef int client_result_flags ;


 int NECP_CLIENT_PARAMETER_FLAG_LISTENER ;
 int NECP_CLIENT_RESULT_FLAG_ALLOW_QOS_MARKING ;
 int NECP_PARSED_PARAMETERS_FIELD_EFFECTIVE_PID ;
 int VERIFY (int ) ;
 int memcpy (int*,int *,int) ;
 int * necp_buffer_get_tlv_value (int ,int ,int*) ;
 int necp_client_parse_parameters (int ,int,struct necp_client_parsed_parameters*) ;
 int uuid_copy (int ,int ) ;

__attribute__((used)) static int
necp_client_copy_parameters_locked(struct necp_client *client,
           struct necp_client_nexus_parameters *parameters)
{
 VERIFY(parameters != ((void*)0));

 struct necp_client_parsed_parameters parsed_parameters = {};
 int error = necp_client_parse_parameters(client->parameters, (u_int32_t)client->parameters_length, &parsed_parameters);

 parameters->pid = client->proc_pid;
 if (parsed_parameters.valid_fields & NECP_PARSED_PARAMETERS_FIELD_EFFECTIVE_PID) {
  parameters->epid = parsed_parameters.effective_pid;
 } else {
  parameters->epid = parameters->pid;
 }
 memcpy(&parameters->local_addr, &parsed_parameters.local_addr, sizeof(parameters->local_addr));
 memcpy(&parameters->remote_addr, &parsed_parameters.remote_addr, sizeof(parameters->remote_addr));
 parameters->ip_protocol = parsed_parameters.ip_protocol;
 parameters->traffic_class = parsed_parameters.traffic_class;
 uuid_copy(parameters->euuid, parsed_parameters.effective_uuid);
 parameters->is_listener = (parsed_parameters.flags & NECP_CLIENT_PARAMETER_FLAG_LISTENER) ? 1 : 0;
 parameters->policy_id = client->policy_id;


 u_int32_t client_result_flags = 0;
 u_int32_t value_size = 0;
 u_int8_t *flags_pointer = ((void*)0);
 flags_pointer = necp_buffer_get_tlv_value(client->result, 0, &value_size);
 if (flags_pointer && value_size == sizeof(client_result_flags)) {
  memcpy(&client_result_flags, flags_pointer, value_size);
 }
 parameters->allow_qos_marking = (client_result_flags & NECP_CLIENT_RESULT_FLAG_ALLOW_QOS_MARKING) ? 1 : 0;

 return (error);
}
