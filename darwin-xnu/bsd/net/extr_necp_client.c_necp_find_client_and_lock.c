
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
struct necp_client_flow_registration {int client_id; struct necp_client_flow_registration* client; int registration_id; } ;
struct necp_client {int client_id; struct necp_client* client; int registration_id; } ;


 int NECP_CLIENT_LOCK (struct necp_client_flow_registration*) ;
 int NECP_CLIENT_TREE_ASSERT_LOCKED () ;
 int NECP_FLOW_TREE_LOCK_SHARED () ;
 int NECP_FLOW_TREE_UNLOCK () ;
 struct necp_client_flow_registration* RB_FIND (int ,int *,struct necp_client_flow_registration*) ;
 int _necp_client_flow_global_tree ;
 int _necp_client_global_tree ;
 int necp_client_flow_global_tree ;
 int necp_client_global_tree ;
 scalar_t__ necp_client_id_is_flow (int ) ;
 int uuid_copy (int ,int ) ;

__attribute__((used)) static struct necp_client *
necp_find_client_and_lock(uuid_t client_id)
{
 NECP_CLIENT_TREE_ASSERT_LOCKED();

 struct necp_client *client = ((void*)0);

 if (necp_client_id_is_flow(client_id)) {
  NECP_FLOW_TREE_LOCK_SHARED();
  struct necp_client_flow_registration find;
  uuid_copy(find.registration_id, client_id);
  struct necp_client_flow_registration *flow = RB_FIND(_necp_client_flow_global_tree, &necp_client_flow_global_tree, &find);
  if (flow != ((void*)0)) {
   client = flow->client;
  }
  NECP_FLOW_TREE_UNLOCK();
 } else {
  struct necp_client find;
  uuid_copy(find.client_id, client_id);
  client = RB_FIND(_necp_client_global_tree, &necp_client_global_tree, &find);
 }

 if (client != ((void*)0)) {
  NECP_CLIENT_LOCK(client);
 }

 return (client);
}
