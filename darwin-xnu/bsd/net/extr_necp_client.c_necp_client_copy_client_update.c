
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
struct necp_fd_data {int flags; scalar_t__ update_count; int update_list; } ;
struct necp_client_update {scalar_t__ update_length; int update; int * client_id; } ;
struct necp_client_action_args {int client_id_len; scalar_t__ buffer_size; int buffer; int client_id; } ;


 int EINVAL ;
 int ENOENT ;
 int FREE (struct necp_client_update*,int ) ;
 int LOG_ERR ;
 int M_NECP ;
 int NECPLOG (int ,char*,int,...) ;
 int NECPLOG0 (int ,char*) ;
 int NECP_FD_LOCK (struct necp_fd_data*) ;
 int NECP_FD_UNLOCK (struct necp_fd_data*) ;
 int NECP_OPEN_FLAG_PUSH_OBSERVER ;
 struct necp_client_update* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct necp_client_update*,int ) ;
 int VERIFY (int) ;
 int chain ;
 int copyout (int *,int ,int) ;

__attribute__((used)) static int
necp_client_copy_client_update(struct necp_fd_data *fd_data, struct necp_client_action_args *uap, int *retval)
{
 int error = 0;

 *retval = 0;

 if (!(fd_data->flags & NECP_OPEN_FLAG_PUSH_OBSERVER)) {
  NECPLOG0(LOG_ERR, "NECP fd is not observer, cannot copy client update");
  return (EINVAL);
 }

 if (uap->client_id_len != sizeof(uuid_t) || uap->client_id == 0) {
  NECPLOG0(LOG_ERR, "Client id invalid, cannot copy client update");
  return (EINVAL);
 }

 if (uap->buffer_size == 0 || uap->buffer == 0) {
  NECPLOG0(LOG_ERR, "Buffer invalid, cannot copy client update");
  return (EINVAL);
 }

 NECP_FD_LOCK(fd_data);
 struct necp_client_update *client_update = TAILQ_FIRST(&fd_data->update_list);
 if (client_update != ((void*)0)) {
  TAILQ_REMOVE(&fd_data->update_list, client_update, chain);
  VERIFY(fd_data->update_count > 0);
  fd_data->update_count--;
 }
 NECP_FD_UNLOCK(fd_data);

 if (client_update != ((void*)0)) {
  error = copyout(client_update->client_id, uap->client_id, sizeof(uuid_t));
  if (error) {
   NECPLOG(LOG_ERR, "Copy client update copyout client id error (%d)", error);
  } else {
   if (uap->buffer_size < client_update->update_length) {
    NECPLOG(LOG_ERR, "Buffer size cannot hold update (%zu < %zu)", uap->buffer_size, client_update->update_length);
    error = EINVAL;
   } else {
    error = copyout(&client_update->update, uap->buffer, client_update->update_length);
    if (error) {
     NECPLOG(LOG_ERR, "Copy client update copyout error (%d)", error);
    } else {
     *retval = client_update->update_length;
    }
   }
  }

  FREE(client_update, M_NECP);
  client_update = ((void*)0);
 } else {
  error = ENOENT;
 }

 return (error);
}
