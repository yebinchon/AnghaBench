
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
struct proc {int dummy; } ;
struct necp_fd_data {int flags; int clients; int proc_pid; } ;
struct necp_client_action_args {int client_id_len; scalar_t__ buffer; int client_id; int buffer_size; } ;
struct necp_client {int platform_binary; int client_id; int flow_registrations; int assertion_list; void* agent_handle; int proc_pid; int parameters_length; int route_lock; int lock; int parameters; } ;


 int EINVAL ;
 int ENOMEM ;
 int FREE (struct necp_client*,int ) ;
 int LIST_INIT (int *) ;
 int LOG_ERR ;
 int M_NECP ;
 int M_WAITOK ;
 int M_ZERO ;
 int NECPLOG (int ,char*,int) ;
 int NECPLOG0 (int ,char*) ;
 int NECP_CLIENT_LOCK (struct necp_client*) ;
 int NECP_CLIENT_TREE_LOCK_EXCLUSIVE () ;
 int NECP_CLIENT_TREE_UNLOCK () ;
 int NECP_CLIENT_UNLOCK (struct necp_client*) ;
 int NECP_FD_LOCK (struct necp_fd_data*) ;
 int NECP_FD_UNLOCK (struct necp_fd_data*) ;
 int NECP_MAX_CLIENT_PARAMETERS_SIZE ;
 int NECP_OPEN_FLAG_PUSH_OBSERVER ;
 int OSIncrementAtomic (int *) ;
 int RB_INIT (int *) ;
 int RB_INSERT (int ,int *,struct necp_client*) ;
 struct necp_client* _MALLOC (int ,int ,int) ;
 int _necp_client_global_tree ;
 int _necp_client_tree ;
 int copyin (scalar_t__,int ,int ) ;
 int copyout (int ,int ,int) ;
 scalar_t__ csproc_get_platform_binary (struct proc*) ;
 int current_proc () ;
 int lck_mtx_init (int *,int ,int ) ;
 int necp_client_count ;
 int necp_client_global_tree ;
 int necp_client_retain (struct necp_client*) ;
 int necp_client_update_observer_add (struct necp_client*) ;
 int necp_fd_mtx_attr ;
 int necp_fd_mtx_grp ;
 int necp_generate_client_id (int ,int) ;
 int necp_update_client_result (int ,struct necp_fd_data*,struct necp_client*,int *) ;

__attribute__((used)) static int
necp_client_add(struct proc *p, struct necp_fd_data *fd_data, struct necp_client_action_args *uap, int *retval)
{
 int error = 0;
 struct necp_client *client = ((void*)0);

 if (fd_data->flags & NECP_OPEN_FLAG_PUSH_OBSERVER) {
  NECPLOG0(LOG_ERR, "NECP client observers with push enabled may not add their own clients");
  return (EINVAL);
 }

 if (uap->client_id == 0 || uap->client_id_len != sizeof(uuid_t) ||
  uap->buffer_size == 0 || uap->buffer_size > NECP_MAX_CLIENT_PARAMETERS_SIZE || uap->buffer == 0) {
  return (EINVAL);
 }

 if ((client = _MALLOC(sizeof(struct necp_client) + uap->buffer_size, M_NECP,
        M_WAITOK | M_ZERO)) == ((void*)0)) {
  error = ENOMEM;
  goto done;
 }

 error = copyin(uap->buffer, client->parameters, uap->buffer_size);
 if (error) {
  NECPLOG(LOG_ERR, "necp_client_add parameters copyin error (%d)", error);
  goto done;
 }

 lck_mtx_init(&client->lock, necp_fd_mtx_grp, necp_fd_mtx_attr);
 lck_mtx_init(&client->route_lock, necp_fd_mtx_grp, necp_fd_mtx_attr);
 necp_client_retain(client);

 client->parameters_length = uap->buffer_size;
 client->proc_pid = fd_data->proc_pid;
 client->agent_handle = (void *)fd_data;
 client->platform_binary = ((csproc_get_platform_binary(p) == 0) ? 0 : 1);

 necp_generate_client_id(client->client_id, 0);
 LIST_INIT(&client->assertion_list);
 RB_INIT(&client->flow_registrations);

 error = copyout(client->client_id, uap->client_id, sizeof(uuid_t));
 if (error) {
  NECPLOG(LOG_ERR, "necp_client_add client_id copyout error (%d)", error);
  goto done;
 }

 necp_client_update_observer_add(client);

 NECP_FD_LOCK(fd_data);
 RB_INSERT(_necp_client_tree, &fd_data->clients, client);
 OSIncrementAtomic(&necp_client_count);
 NECP_CLIENT_TREE_LOCK_EXCLUSIVE();
 RB_INSERT(_necp_client_global_tree, &necp_client_global_tree, client);
 NECP_CLIENT_TREE_UNLOCK();


 NECP_CLIENT_LOCK(client);
 (void)necp_update_client_result(current_proc(), fd_data, client, ((void*)0));
 NECP_CLIENT_UNLOCK(client);
 NECP_FD_UNLOCK(fd_data);
done:
 if (error != 0) {
  if (client != ((void*)0)) {
   FREE(client, M_NECP);
   client = ((void*)0);
  }
 }
 *retval = error;

 return (error);
}
