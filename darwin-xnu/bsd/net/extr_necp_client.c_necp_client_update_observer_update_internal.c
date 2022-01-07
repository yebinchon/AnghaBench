
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct necp_fd_data {scalar_t__ update_count; int update_list; } ;
struct TYPE_2__ {int tlv_buffer; int update_type; } ;
struct necp_client_update {TYPE_1__ update; int client_id; scalar_t__ update_length; } ;
struct necp_client_observer_update {int dummy; } ;
struct necp_client {int result_length; int result; int client_id; } ;


 int M_NECP ;
 int M_WAITOK ;
 int M_ZERO ;
 int NECP_CLIENT_UPDATE_TYPE_RESULT ;
 int NECP_FD_LOCK (struct necp_fd_data*) ;
 int NECP_FD_UNLOCK (struct necp_fd_data*) ;
 int TAILQ_INSERT_TAIL (int *,struct necp_client_update*,int ) ;
 struct necp_client_update* _MALLOC (int ,int ,int) ;
 int chain ;
 int memcpy (int ,int ,int ) ;
 int necp_fd_notify (struct necp_fd_data*,int) ;
 scalar_t__ necp_observer_message_limit ;
 int uuid_copy (int ,int ) ;

__attribute__((used)) static void
necp_client_update_observer_update_internal(struct necp_fd_data *observer_fd, struct necp_client *client)
{
 NECP_FD_LOCK(observer_fd);

 if (observer_fd->update_count >= necp_observer_message_limit) {
  NECP_FD_UNLOCK(observer_fd);
  return;
 }

 struct necp_client_update *client_update = _MALLOC(sizeof(struct necp_client_update) + client->result_length,
                M_NECP, M_WAITOK | M_ZERO);
 if (client_update != ((void*)0)) {
  client_update->update_length = sizeof(struct necp_client_observer_update) + client->result_length;
  uuid_copy(client_update->client_id, client->client_id);
  client_update->update.update_type = NECP_CLIENT_UPDATE_TYPE_RESULT;
  memcpy(client_update->update.tlv_buffer, client->result, client->result_length);
  TAILQ_INSERT_TAIL(&observer_fd->update_list, client_update, chain);
  observer_fd->update_count++;

  necp_fd_notify(observer_fd, 1);
 }

 NECP_FD_UNLOCK(observer_fd);
}
