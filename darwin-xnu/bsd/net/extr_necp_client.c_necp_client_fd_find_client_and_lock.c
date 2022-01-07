
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
struct necp_fd_data {int dummy; } ;
struct necp_client {int dummy; } ;


 int NECP_CLIENT_LOCK (struct necp_client*) ;
 struct necp_client* necp_client_fd_find_client_unlocked (struct necp_fd_data*,int ) ;

__attribute__((used)) static struct necp_client *
necp_client_fd_find_client_and_lock(struct necp_fd_data *client_fd, uuid_t client_id)
{
 struct necp_client *client = necp_client_fd_find_client_unlocked(client_fd, client_id);
 if (client != ((void*)0)) {
  NECP_CLIENT_LOCK(client);
 }

 return (client);
}
