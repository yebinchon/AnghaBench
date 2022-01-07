
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
typedef int u_int8_t ;
typedef int pid_t ;


 int netagent_client_message_with_params (int ,int ,int ,void*,int ,int *,int *,int *) ;

int
netagent_client_message(uuid_t agent_uuid, uuid_t necp_client_uuid, pid_t pid, void *handle, u_int8_t message_type)
{
 return (netagent_client_message_with_params(agent_uuid, necp_client_uuid, pid, handle, message_type, ((void*)0), ((void*)0), ((void*)0)));
}
