
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
typedef int u_int32_t ;
struct necp_client {scalar_t__ parameters_length; int parameters; int proc_pid; } ;
struct necp_aggregate_result {int * netagents; } ;
typedef scalar_t__ proc_t ;


 int ESRCH ;
 scalar_t__ FALSE ;
 int NECP_MAX_NETAGENTS ;
 int NETAGENT_DOMAINSIZE ;
 int NETAGENT_DOMAIN_RADIO_MANAGER ;
 int NETAGENT_TYPESIZE ;
 int NETAGENT_TYPE_RADIO_MANAGER ;
 scalar_t__ PROC_NULL ;
 int memset (char**,int ,int) ;
 int necp_application_find_policy_match_internal (scalar_t__,int ,int ,struct necp_aggregate_result*,int *,int ,int *,int *,int *,int) ;
 scalar_t__ netagent_get_agent_domain_and_type (int ,char*,char*) ;
 scalar_t__ proc_find (int ) ;
 int proc_rele (scalar_t__) ;
 scalar_t__ strncmp (char*,int ,int) ;
 int uuid_copy (int ,int ) ;
 scalar_t__ uuid_is_null (int ) ;

__attribute__((used)) static int
necp_client_lookup_bb_radio_manager(struct necp_client *client,
        uuid_t netagent_uuid)
{
 char netagent_domain[NETAGENT_DOMAINSIZE];
 char netagent_type[NETAGENT_TYPESIZE];
 struct necp_aggregate_result result;
 proc_t proc;
 int error;

 proc = proc_find(client->proc_pid);
 if (proc == PROC_NULL) {
  return ESRCH;
 }

 error = necp_application_find_policy_match_internal(proc, client->parameters, (u_int32_t)client->parameters_length,
    &result, ((void*)0), 0, ((void*)0), ((void*)0), ((void*)0), 1);

 proc_rele(proc);
 proc = PROC_NULL;

 if (error) {
  return error;
 }

 for (int i = 0; i < NECP_MAX_NETAGENTS; i++) {
  if (uuid_is_null(result.netagents[i])) {

   break;
  }

  memset(&netagent_domain, 0, NETAGENT_DOMAINSIZE);
  memset(&netagent_type, 0, NETAGENT_TYPESIZE);
  if (netagent_get_agent_domain_and_type(result.netagents[i], netagent_domain, netagent_type) == FALSE) {
   continue;
  }

  if (strncmp(netagent_domain, NETAGENT_DOMAIN_RADIO_MANAGER, NETAGENT_DOMAINSIZE) != 0) {
   continue;
  }

  if (strncmp(netagent_type, NETAGENT_TYPE_RADIO_MANAGER, NETAGENT_TYPESIZE) != 0) {
   continue;
  }

  uuid_copy(netagent_uuid, result.netagents[i]);

  break;
 }

 return 0;
}
