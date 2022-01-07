
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct necp_agent_use_parameters* uuid_t ;
struct necp_fd_data {int dummy; } ;
struct necp_client_action_args {scalar_t__ client_id; int client_id_len; int buffer_size; scalar_t__ buffer; } ;
struct necp_client {int dummy; } ;
struct necp_agent_use_parameters {int out_use_count; int agent_uuid; } ;
typedef int parameters ;


 int EINVAL ;
 int ENOENT ;
 int LOG_ERR ;
 int NECPLOG (int ,char*,int) ;
 int NECP_CLIENT_UNLOCK (struct necp_client*) ;
 int NECP_FD_LOCK (struct necp_fd_data*) ;
 int NECP_FD_UNLOCK (struct necp_fd_data*) ;
 int copyin (scalar_t__,struct necp_agent_use_parameters*,int) ;
 int copyout (struct necp_agent_use_parameters*,scalar_t__,int) ;
 struct necp_client* necp_client_fd_find_client_and_lock (struct necp_fd_data*,struct necp_agent_use_parameters*) ;
 int netagent_use (int ,int *) ;

__attribute__((used)) static int
necp_client_agent_use(struct necp_fd_data *fd_data, struct necp_client_action_args *uap, int *retval)
{
 int error = 0;
 struct necp_client *client = ((void*)0);
 uuid_t client_id;
 struct necp_agent_use_parameters parameters;

 if (uap->client_id == 0 || uap->client_id_len != sizeof(uuid_t) ||
  uap->buffer_size != sizeof(parameters) || uap->buffer == 0) {
  error = EINVAL;
  goto done;
 }

 error = copyin(uap->client_id, client_id, sizeof(uuid_t));
 if (error) {
  NECPLOG(LOG_ERR, "Copyin client_id error (%d)", error);
  goto done;
 }

 error = copyin(uap->buffer, &parameters, uap->buffer_size);
 if (error) {
  NECPLOG(LOG_ERR, "Parameters copyin error (%d)", error);
  goto done;
 }

 NECP_FD_LOCK(fd_data);
 client = necp_client_fd_find_client_and_lock(fd_data, client_id);
 if (client != ((void*)0)) {
  error = netagent_use(parameters.agent_uuid, &parameters.out_use_count);
  NECP_CLIENT_UNLOCK(client);
 } else {
  error = ENOENT;
 }

 NECP_FD_UNLOCK(fd_data);

 if (error == 0) {
  error = copyout(&parameters, uap->buffer, uap->buffer_size);
  if (error) {
   NECPLOG(LOG_ERR, "Parameters copyout error (%d)", error);
   goto done;
  }
 }

done:
 *retval = error;

 return (error);
}
