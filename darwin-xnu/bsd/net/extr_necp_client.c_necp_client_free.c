
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct necp_client {int lock; int route_lock; struct necp_client* extra_interface_options; } ;


 int FREE (struct necp_client*,int ) ;
 int M_NECP ;
 int NECP_CLIENT_ASSERT_LOCKED (struct necp_client*) ;
 int NECP_CLIENT_UNLOCK (struct necp_client*) ;
 int lck_mtx_destroy (int *,int ) ;
 int necp_fd_mtx_grp ;

__attribute__((used)) static void
necp_client_free(struct necp_client *client)
{
 NECP_CLIENT_ASSERT_LOCKED(client);

 NECP_CLIENT_UNLOCK(client);

 FREE(client->extra_interface_options, M_NECP);
 client->extra_interface_options = ((void*)0);

 lck_mtx_destroy(&client->route_lock, necp_fd_mtx_grp);
 lck_mtx_destroy(&client->lock, necp_fd_mtx_grp);

 FREE(client, M_NECP);
}
