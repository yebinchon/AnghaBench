
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uuid_t ;
typedef int uint32_t ;
typedef int u_int32_t ;
struct necp_client_parsed_parameters {TYPE_2__* required_netagent_types; int * required_netagents; } ;
struct TYPE_3__ {scalar_t__ generation; int netagent_uuid; } ;
struct necp_client {TYPE_1__ failed_trigger_agent; } ;
struct TYPE_4__ {int netagent_type; int netagent_domain; } ;


 int FALSE ;
 int NECP_MAX_PARSED_PARAMETERS ;
 int NETAGENT_DOMAINSIZE ;
 int NETAGENT_FLAG_NEXUS_PROVIDER ;
 int NETAGENT_FLAG_REGISTERED ;
 int NETAGENT_FLAG_SPECIFIC_USE_ONLY ;
 int NETAGENT_TYPESIZE ;
 int TRUE ;
 int memset (char**,int ,int) ;
 scalar_t__ netagent_get_agent_domain_and_type (int ,char*,char*) ;
 int netagent_get_flags (int ) ;
 scalar_t__ netagent_get_generation (int ) ;
 scalar_t__ strlen (int ) ;
 scalar_t__ strncmp (char*,int ,int) ;
 int uuid_clear (int ) ;
 scalar_t__ uuid_compare (int ,int ) ;
 scalar_t__ uuid_is_null (int ) ;

__attribute__((used)) static bool
necp_netagent_applies_to_client(struct necp_client *client,
        const struct necp_client_parsed_parameters *parameters,
        uuid_t *netagent_uuid, bool allow_nexus,
        uint32_t interface_index, uint32_t interface_generation)
{
#pragma unused(interface_index, interface_generation)
 bool applies = FALSE;
 u_int32_t flags = netagent_get_flags(*netagent_uuid);
 if (!(flags & NETAGENT_FLAG_REGISTERED)) {

  return (applies);
 }

 if (!allow_nexus &&
  (flags & NETAGENT_FLAG_NEXUS_PROVIDER)) {



  return (applies);
 }

 if (uuid_compare(client->failed_trigger_agent.netagent_uuid, *netagent_uuid) == 0) {
  if (client->failed_trigger_agent.generation == netagent_get_generation(*netagent_uuid)) {

   return (applies);
  } else {

   uuid_clear(client->failed_trigger_agent.netagent_uuid);
   client->failed_trigger_agent.generation = 0;
  }
 }

 if (flags & NETAGENT_FLAG_SPECIFIC_USE_ONLY) {

  bool required = FALSE;
  if (parameters != ((void*)0)) {

   for (int i = 0; i < NECP_MAX_PARSED_PARAMETERS; i++) {
    if (uuid_is_null(parameters->required_netagents[i])) {
     break;
    }
    if (uuid_compare(parameters->required_netagents[i], *netagent_uuid) == 0) {
     required = TRUE;
     break;
    }
   }

   if (!required) {

    bool fetched_type = FALSE;
    char netagent_domain[NETAGENT_DOMAINSIZE];
    char netagent_type[NETAGENT_TYPESIZE];
    memset(&netagent_domain, 0, NETAGENT_DOMAINSIZE);
    memset(&netagent_type, 0, NETAGENT_TYPESIZE);

    for (int i = 0; i < NECP_MAX_PARSED_PARAMETERS; i++) {
     if (strlen(parameters->required_netagent_types[i].netagent_domain) == 0 ||
      strlen(parameters->required_netagent_types[i].netagent_type) == 0) {
      break;
     }

     if (!fetched_type) {
      if (netagent_get_agent_domain_and_type(*netagent_uuid, netagent_domain, netagent_type)) {
       fetched_type = TRUE;
      } else {
       break;
      }
     }

     if ((strlen(parameters->required_netagent_types[i].netagent_domain) == 0 ||
       strncmp(netagent_domain, parameters->required_netagent_types[i].netagent_domain, NETAGENT_DOMAINSIZE) == 0) &&
      (strlen(parameters->required_netagent_types[i].netagent_type) == 0 ||
       strncmp(netagent_type, parameters->required_netagent_types[i].netagent_type, NETAGENT_TYPESIZE) == 0)) {
      required = TRUE;
      break;
     }
    }
   }
  }

  applies = required;
 } else {
  applies = TRUE;
 }


 return (applies);
}
