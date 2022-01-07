
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
struct necp_fd_data {int clients; int flows; } ;
struct necp_client_flow_registration {int client_id; struct necp_client_flow_registration* client; int registration_id; } ;
struct necp_client {int client_id; struct necp_client* client; int registration_id; } ;


 int NECP_FD_ASSERT_LOCKED (struct necp_fd_data*) ;
 struct necp_client_flow_registration* RB_FIND (int ,int *,struct necp_client_flow_registration*) ;
 int _necp_client_tree ;
 int _necp_fd_flow_tree ;
 scalar_t__ necp_client_id_is_flow (int ) ;
 int uuid_copy (int ,int ) ;

__attribute__((used)) static struct necp_client *
necp_client_fd_find_client_unlocked(struct necp_fd_data *client_fd, uuid_t client_id)
{
 NECP_FD_ASSERT_LOCKED(client_fd);
 struct necp_client *client = ((void*)0);

 if (necp_client_id_is_flow(client_id)) {
  struct necp_client_flow_registration find;
  uuid_copy(find.registration_id, client_id);
  struct necp_client_flow_registration *flow = RB_FIND(_necp_fd_flow_tree, &client_fd->flows, &find);
  if (flow != ((void*)0)) {
   client = flow->client;
  }
 } else {
  struct necp_client find;
  uuid_copy(find.client_id, client_id);
  client = RB_FIND(_necp_client_tree, &client_fd->clients, &find);
 }

 return (client);
}
