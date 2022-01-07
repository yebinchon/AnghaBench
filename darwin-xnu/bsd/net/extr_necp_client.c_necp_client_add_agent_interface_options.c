
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u_int32_t ;
struct necp_client_parsed_parameters {int dummy; } ;
struct necp_client {int dummy; } ;
typedef TYPE_1__* ifnet_t ;
struct TYPE_4__ {size_t if_agentcount; int if_index; int * if_agentids; } ;


 int TRUE ;
 int ifnet_get_generation (TYPE_1__*) ;
 int necp_netagent_applies_to_client (struct necp_client*,struct necp_client_parsed_parameters const*,int *,int ,int ,int ) ;
 scalar_t__ uuid_is_null (int ) ;

__attribute__((used)) static void
necp_client_add_agent_interface_options(struct necp_client *client,
          const struct necp_client_parsed_parameters *parsed_parameters,
          ifnet_t ifp)
{
 if (ifp != ((void*)0) && ifp->if_agentids != ((void*)0)) {
  for (u_int32_t i = 0; i < ifp->if_agentcount; i++) {
   if (uuid_is_null(ifp->if_agentids[i])) {
    continue;
   }

   (void)necp_netagent_applies_to_client(client, parsed_parameters, &ifp->if_agentids[i], TRUE,
              ifp->if_index, ifnet_get_generation(ifp));
  }
 }
}
