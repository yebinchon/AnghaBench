
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct necp_fd_data {int flows; } ;
struct necp_client_flow_registration {int flow_result_read; struct necp_client* client; int flow_list; int registration_id; int last_interface_details; } ;
struct necp_client {int flow_registrations; } ;


 int IFSCOPE_NONE ;
 int LIST_INIT (int *) ;
 int MCR_SLEEP ;
 int NECP_CLIENT_ASSERT_LOCKED (struct necp_client*) ;
 int NECP_FD_ASSERT_LOCKED (struct necp_fd_data*) ;
 int NECP_FLOW_TREE_LOCK_EXCLUSIVE () ;
 int NECP_FLOW_TREE_UNLOCK () ;
 int NSTAT_IFNET_IS_UNKNOWN_TYPE ;
 int RB_INSERT (int ,int *,struct necp_client_flow_registration*) ;
 int _necp_client_flow_global_tree ;
 int _necp_client_flow_tree ;
 int _necp_fd_flow_tree ;
 int combine_interface_details (int ,int ) ;
 struct necp_client_flow_registration* mcache_alloc (int ,int ) ;
 int memset (struct necp_client_flow_registration*,int ,int) ;
 int necp_client_flow_global_tree ;
 int necp_flow_registration_cache ;
 int necp_generate_client_id (int ,int) ;

__attribute__((used)) static struct necp_client_flow_registration *
necp_client_create_flow_registration(struct necp_fd_data *fd_data, struct necp_client *client)
{
 NECP_FD_ASSERT_LOCKED(fd_data);
 NECP_CLIENT_ASSERT_LOCKED(client);

 struct necp_client_flow_registration *new_registration = mcache_alloc(necp_flow_registration_cache, MCR_SLEEP);
 if (new_registration == ((void*)0)) {
  return ((void*)0);
 }

 memset(new_registration, 0, sizeof(*new_registration));

 new_registration->last_interface_details = combine_interface_details(IFSCOPE_NONE, NSTAT_IFNET_IS_UNKNOWN_TYPE);

 necp_generate_client_id(new_registration->registration_id, 1);
 LIST_INIT(&new_registration->flow_list);


 RB_INSERT(_necp_client_flow_tree, &client->flow_registrations, new_registration);


 RB_INSERT(_necp_fd_flow_tree, &fd_data->flows, new_registration);


 NECP_FLOW_TREE_LOCK_EXCLUSIVE();
 RB_INSERT(_necp_client_flow_global_tree, &necp_client_flow_global_tree, new_registration);
 NECP_FLOW_TREE_UNLOCK();

 new_registration->client = client;


 new_registration->flow_result_read = 1;

 return new_registration;
}
