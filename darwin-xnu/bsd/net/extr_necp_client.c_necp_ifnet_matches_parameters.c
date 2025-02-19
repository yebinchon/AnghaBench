
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct TYPE_7__ {int sa; } ;
struct necp_client_parsed_parameters {int valid_fields; int flags; scalar_t__ required_interface_type; scalar_t__* prohibited_interface_types; TYPE_1__* avoided_netagent_types; int * avoided_netagents; TYPE_5__* preferred_netagent_types; int * preferred_netagents; TYPE_4__* prohibited_netagent_types; TYPE_3__* required_netagent_types; int * prohibited_netagents; int * required_netagents; int * prohibited_interfaces; TYPE_2__ local_addr; } ;
struct ifnet {int dummy; } ;
struct TYPE_10__ {int netagent_type; int netagent_domain; } ;
struct TYPE_9__ {int netagent_type; int netagent_domain; } ;
struct TYPE_8__ {int netagent_type; int netagent_domain; } ;
struct TYPE_6__ {int netagent_type; int netagent_domain; } ;


 int FALSE ;
 scalar_t__ IFNET_IS_EXPENSIVE (struct ifnet*) ;
 int NECP_CLIENT_PARAMETER_FLAG_ONLY_PRIMARY_REQUIRES_TYPE ;
 int NECP_CLIENT_PARAMETER_FLAG_PROHIBIT_EXPENSIVE ;
 int NECP_MAX_PARSED_PARAMETERS ;
 int NECP_PARSED_PARAMETERS_FIELD_AVOIDED_AGENT ;
 int NECP_PARSED_PARAMETERS_FIELD_AVOIDED_AGENT_TYPE ;
 int NECP_PARSED_PARAMETERS_FIELD_FLAGS ;
 int NECP_PARSED_PARAMETERS_FIELD_LOCAL_ADDR ;
 int NECP_PARSED_PARAMETERS_FIELD_PREFERRED_AGENT ;
 int NECP_PARSED_PARAMETERS_FIELD_PREFERRED_AGENT_TYPE ;
 int NECP_PARSED_PARAMETERS_FIELD_PROHIBITED_AGENT ;
 int NECP_PARSED_PARAMETERS_FIELD_PROHIBITED_AGENT_TYPE ;
 int NECP_PARSED_PARAMETERS_FIELD_PROHIBITED_IF ;
 int NECP_PARSED_PARAMETERS_FIELD_PROHIBITED_IFTYPE ;
 int NECP_PARSED_PARAMETERS_FIELD_REQUIRED_AGENT ;
 int NECP_PARSED_PARAMETERS_FIELD_REQUIRED_AGENT_TYPE ;
 int NECP_PARSED_PARAMETERS_FIELD_REQUIRED_IFTYPE ;
 int TRUE ;
 scalar_t__ necp_ifnet_matches_agent (struct ifnet*,int *,int) ;
 scalar_t__ necp_ifnet_matches_agent_type (struct ifnet*,int ,int ,int) ;
 int necp_ifnet_matches_local_address (struct ifnet*,int *) ;
 scalar_t__ necp_ifnet_matches_name (struct ifnet*,int ,int) ;
 scalar_t__ necp_ifnet_matches_type (struct ifnet*,scalar_t__,int) ;
 scalar_t__ strlen (int ) ;
 scalar_t__ uuid_is_null (int ) ;

__attribute__((used)) static bool
necp_ifnet_matches_parameters(struct ifnet *ifp,
         struct necp_client_parsed_parameters *parsed_parameters,
         u_int32_t *preferred_count,
         bool secondary_interface)
{
 if (preferred_count) {
  *preferred_count = 0;
 }

 if (parsed_parameters->valid_fields & NECP_PARSED_PARAMETERS_FIELD_LOCAL_ADDR) {
  if (!necp_ifnet_matches_local_address(ifp, &parsed_parameters->local_addr.sa)) {
   return (FALSE);
  }
 }

 if (parsed_parameters->valid_fields & NECP_PARSED_PARAMETERS_FIELD_FLAGS) {
  if ((parsed_parameters->flags & NECP_CLIENT_PARAMETER_FLAG_PROHIBIT_EXPENSIVE) &&
   IFNET_IS_EXPENSIVE(ifp)) {
   return (FALSE);
  }
 }

 if ((!secondary_interface ||
   !(parsed_parameters->valid_fields & NECP_PARSED_PARAMETERS_FIELD_FLAGS) ||
   !(parsed_parameters->flags & NECP_CLIENT_PARAMETER_FLAG_ONLY_PRIMARY_REQUIRES_TYPE)) &&
     (parsed_parameters->valid_fields & NECP_PARSED_PARAMETERS_FIELD_REQUIRED_IFTYPE) &&
  !necp_ifnet_matches_type(ifp, parsed_parameters->required_interface_type, FALSE)) {
  return (FALSE);
 }

 if (parsed_parameters->valid_fields & NECP_PARSED_PARAMETERS_FIELD_PROHIBITED_IFTYPE) {
  for (int i = 0; i < NECP_MAX_PARSED_PARAMETERS; i++) {
   if (parsed_parameters->prohibited_interface_types[i] == 0) {
    break;
   }

   if (necp_ifnet_matches_type(ifp, parsed_parameters->prohibited_interface_types[i], TRUE)) {
    return (FALSE);
   }
  }
 }

 if (parsed_parameters->valid_fields & NECP_PARSED_PARAMETERS_FIELD_PROHIBITED_IF) {
  for (int i = 0; i < NECP_MAX_PARSED_PARAMETERS; i++) {
   if (strlen(parsed_parameters->prohibited_interfaces[i]) == 0) {
    break;
   }

   if (necp_ifnet_matches_name(ifp, parsed_parameters->prohibited_interfaces[i], TRUE)) {
    return (FALSE);
   }
  }
 }

 if (parsed_parameters->valid_fields & NECP_PARSED_PARAMETERS_FIELD_REQUIRED_AGENT) {
  for (int i = 0; i < NECP_MAX_PARSED_PARAMETERS; i++) {
   if (uuid_is_null(parsed_parameters->required_netagents[i])) {
    break;
   }

   if (!necp_ifnet_matches_agent(ifp, &parsed_parameters->required_netagents[i], FALSE)) {
    return (FALSE);
   }
  }
 }

 if (parsed_parameters->valid_fields & NECP_PARSED_PARAMETERS_FIELD_PROHIBITED_AGENT) {
  for (int i = 0; i < NECP_MAX_PARSED_PARAMETERS; i++) {
   if (uuid_is_null(parsed_parameters->prohibited_netagents[i])) {
    break;
   }

   if (necp_ifnet_matches_agent(ifp, &parsed_parameters->prohibited_netagents[i], TRUE)) {
    return (FALSE);
   }
  }
 }

 if (parsed_parameters->valid_fields & NECP_PARSED_PARAMETERS_FIELD_REQUIRED_AGENT_TYPE) {
  for (int i = 0; i < NECP_MAX_PARSED_PARAMETERS; i++) {
   if (strlen(parsed_parameters->required_netagent_types[i].netagent_domain) == 0 &&
    strlen(parsed_parameters->required_netagent_types[i].netagent_type) == 0) {
    break;
   }

   if (!necp_ifnet_matches_agent_type(ifp, parsed_parameters->required_netagent_types[i].netagent_domain, parsed_parameters->required_netagent_types[i].netagent_type, FALSE)) {
    return (FALSE);
   }
  }
 }

 if (parsed_parameters->valid_fields & NECP_PARSED_PARAMETERS_FIELD_PROHIBITED_AGENT_TYPE) {
  for (int i = 0; i < NECP_MAX_PARSED_PARAMETERS; i++) {
   if (strlen(parsed_parameters->prohibited_netagent_types[i].netagent_domain) == 0 &&
    strlen(parsed_parameters->prohibited_netagent_types[i].netagent_type) == 0) {
    break;
   }

   if (necp_ifnet_matches_agent_type(ifp, parsed_parameters->prohibited_netagent_types[i].netagent_domain, parsed_parameters->prohibited_netagent_types[i].netagent_type, TRUE)) {
    return (FALSE);
   }
  }
 }


 if (preferred_count) {
  if (parsed_parameters->valid_fields & NECP_PARSED_PARAMETERS_FIELD_PREFERRED_AGENT) {
   for (int i = 0; i < NECP_MAX_PARSED_PARAMETERS; i++) {
    if (uuid_is_null(parsed_parameters->preferred_netagents[i])) {
     break;
    }

    if (necp_ifnet_matches_agent(ifp, &parsed_parameters->preferred_netagents[i], TRUE)) {
     (*preferred_count)++;
    }
   }
  }

  if (parsed_parameters->valid_fields & NECP_PARSED_PARAMETERS_FIELD_PREFERRED_AGENT_TYPE) {
   for (int i = 0; i < NECP_MAX_PARSED_PARAMETERS; i++) {
    if (strlen(parsed_parameters->preferred_netagent_types[i].netagent_domain) == 0 &&
     strlen(parsed_parameters->preferred_netagent_types[i].netagent_type) == 0) {
     break;
    }

    if (necp_ifnet_matches_agent_type(ifp, parsed_parameters->preferred_netagent_types[i].netagent_domain, parsed_parameters->preferred_netagent_types[i].netagent_type, TRUE)) {
     (*preferred_count)++;
    }
   }
  }

  if (parsed_parameters->valid_fields & NECP_PARSED_PARAMETERS_FIELD_AVOIDED_AGENT) {
   for (int i = 0; i < NECP_MAX_PARSED_PARAMETERS; i++) {
    if (uuid_is_null(parsed_parameters->avoided_netagents[i])) {
     break;
    }

    if (!necp_ifnet_matches_agent(ifp, &parsed_parameters->avoided_netagents[i], TRUE)) {
     (*preferred_count)++;
    }
   }
  }

  if (parsed_parameters->valid_fields & NECP_PARSED_PARAMETERS_FIELD_AVOIDED_AGENT_TYPE) {
   for (int i = 0; i < NECP_MAX_PARSED_PARAMETERS; i++) {
    if (strlen(parsed_parameters->avoided_netagent_types[i].netagent_domain) == 0 &&
     strlen(parsed_parameters->avoided_netagent_types[i].netagent_type) == 0) {
     break;
    }

    if (!necp_ifnet_matches_agent_type(ifp, parsed_parameters->avoided_netagent_types[i].netagent_domain,
              parsed_parameters->avoided_netagent_types[i].netagent_type, TRUE)) {
     (*preferred_count)++;
    }
   }
  }
 }

 return (TRUE);
}
