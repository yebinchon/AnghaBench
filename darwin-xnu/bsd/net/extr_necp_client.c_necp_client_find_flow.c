
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
struct necp_client_flow_registration {int registration_id; } ;
struct necp_client {int flow_registrations; } ;


 int NECP_CLIENT_ASSERT_LOCKED (struct necp_client*) ;
 struct necp_client_flow_registration* RB_FIND (int ,int *,struct necp_client_flow_registration*) ;
 struct necp_client_flow_registration* RB_ROOT (int *) ;
 int _necp_client_flow_tree ;
 scalar_t__ necp_client_id_is_flow (int ) ;
 int uuid_copy (int ,int ) ;

__attribute__((used)) static struct necp_client_flow_registration *
necp_client_find_flow(struct necp_client *client, uuid_t flow_id)
{
 NECP_CLIENT_ASSERT_LOCKED(client);
 struct necp_client_flow_registration *flow = ((void*)0);

 if (necp_client_id_is_flow(flow_id)) {
  struct necp_client_flow_registration find;
  uuid_copy(find.registration_id, flow_id);
  flow = RB_FIND(_necp_client_flow_tree, &client->flow_registrations, &find);
 } else {
  flow = RB_ROOT(&client->flow_registrations);
 }

 return (flow);
}
