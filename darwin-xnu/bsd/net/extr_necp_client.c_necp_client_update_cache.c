
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef TYPE_6__* uuid_t ;
typedef union sockaddr_in_4_6 {int dummy; } sockaddr_in_4_6 ;
typedef int tfo_cache_buffer ;
struct necp_fd_data {int dummy; } ;
struct necp_client_flow_registration {int flow_list; } ;
struct TYPE_16__ {scalar_t__ sa_family; } ;
struct TYPE_20__ {TYPE_1__ sa; } ;
struct TYPE_17__ {scalar_t__ sa_family; } ;
struct TYPE_19__ {TYPE_2__ sa; } ;
struct necp_client_flow {TYPE_5__ remote_addr; TYPE_4__ local_addr; } ;
struct necp_client_action_args {scalar_t__ client_id; int client_id_len; int buffer_size; scalar_t__ buffer; } ;
struct necp_client {TYPE_3__* current_route; int platform_binary; } ;
struct TYPE_21__ {scalar_t__ necp_cache_buf_type; scalar_t__ necp_cache_buf_ver; int necp_cache_buf_size; scalar_t__ necp_cache_buf_addr; scalar_t__ necp_tcp_tfo_heuristics_success; scalar_t__ necp_tcp_ecn_heuristics_success; } ;
typedef TYPE_6__ necp_tcp_tfo_cache ;
typedef TYPE_6__ necp_tcp_ecn_cache ;
typedef TYPE_6__ necp_cache_buffer ;
typedef int ecn_cache_buffer ;
typedef int cache_buffer ;
struct TYPE_18__ {int * rt_ifp; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int EINVAL ;
 int ENOENT ;
 struct necp_client_flow* LIST_FIRST (int *) ;
 int LOG_ERR ;
 int NECPLOG (int ,char*,int) ;
 scalar_t__ NECP_CLIENT_CACHE_TYPE_ECN ;
 scalar_t__ NECP_CLIENT_CACHE_TYPE_ECN_VER_1 ;
 scalar_t__ NECP_CLIENT_CACHE_TYPE_TFO ;
 scalar_t__ NECP_CLIENT_CACHE_TYPE_TFO_VER_1 ;
 int NECP_CLIENT_ROUTE_LOCK (struct necp_client*) ;
 int NECP_CLIENT_ROUTE_UNLOCK (struct necp_client*) ;
 int NECP_CLIENT_UNLOCK (struct necp_client*) ;
 int NECP_FD_LOCK (struct necp_fd_data*) ;
 int NECP_FD_UNLOCK (struct necp_fd_data*) ;
 scalar_t__ USER_ADDR_NULL ;
 int copyin (scalar_t__,TYPE_6__*,int) ;
 int memset (TYPE_6__*,int ,int) ;
 struct necp_client* necp_client_fd_find_client_and_lock (struct necp_fd_data*,TYPE_6__*) ;
 struct necp_client_flow_registration* necp_client_find_flow (struct necp_client*,TYPE_6__*) ;
 int tcp_heuristics_ecn_update (TYPE_6__*,int *,union sockaddr_in_4_6*) ;
 int tcp_heuristics_tfo_update (TYPE_6__*,int *,union sockaddr_in_4_6*,union sockaddr_in_4_6*) ;

__attribute__((used)) static int
necp_client_update_cache(struct necp_fd_data *fd_data, struct necp_client_action_args *uap, int *retval)
{
 int error = 0;
 struct necp_client *client = ((void*)0);
 uuid_t client_id;

 if (uap->client_id == 0 || uap->client_id_len != sizeof(uuid_t)) {
  error = EINVAL;
  goto done;
 }

 error = copyin(uap->client_id, client_id, sizeof(uuid_t));
 if (error) {
  NECPLOG(LOG_ERR, "necp_client_update_cache copyin client_id error (%d)", error);
  goto done;
 }

 NECP_FD_LOCK(fd_data);
 client = necp_client_fd_find_client_and_lock(fd_data, client_id);
 if (client == ((void*)0)) {
  NECP_FD_UNLOCK(fd_data);
  error = ENOENT;
  goto done;
 }

 struct necp_client_flow_registration *flow_registration = necp_client_find_flow(client, client_id);
 if (flow_registration == ((void*)0)) {
  NECP_CLIENT_UNLOCK(client);
  NECP_FD_UNLOCK(fd_data);
  error = ENOENT;
  goto done;
 }

 NECP_CLIENT_ROUTE_LOCK(client);

 struct necp_client_flow *flow = LIST_FIRST(&flow_registration->flow_list);
 if (flow == ((void*)0) ||
  (flow->remote_addr.sa.sa_family != AF_INET &&
   flow->remote_addr.sa.sa_family != AF_INET6) ||
  (flow->local_addr.sa.sa_family != AF_INET &&
   flow->local_addr.sa.sa_family != AF_INET6)) {
  error = EINVAL;
  NECPLOG(LOG_ERR, "necp_client_update_cache no flow error (%d)", error);
  goto done_unlock;
 }

 necp_cache_buffer cache_buffer;
 memset(&cache_buffer, 0, sizeof(cache_buffer));

 if (uap->buffer_size != sizeof(necp_cache_buffer) ||
  uap->buffer == USER_ADDR_NULL) {
  error = EINVAL;
  goto done_unlock;
 }

 error = copyin(uap->buffer, &cache_buffer, sizeof(cache_buffer));
 if (error) {
  NECPLOG(LOG_ERR, "necp_client_update_cache copyin cache buffer error (%d)", error);
  goto done_unlock;
 }

 if (cache_buffer.necp_cache_buf_type == NECP_CLIENT_CACHE_TYPE_ECN &&
     cache_buffer.necp_cache_buf_ver == NECP_CLIENT_CACHE_TYPE_ECN_VER_1) {
  if (cache_buffer.necp_cache_buf_size != sizeof(necp_tcp_ecn_cache) ||
      cache_buffer.necp_cache_buf_addr == USER_ADDR_NULL) {
   error = EINVAL;
   goto done_unlock;
  }

  necp_tcp_ecn_cache ecn_cache_buffer;
  memset(&ecn_cache_buffer, 0, sizeof(ecn_cache_buffer));

  error = copyin(cache_buffer.necp_cache_buf_addr, &ecn_cache_buffer, sizeof(necp_tcp_ecn_cache));
  if (error) {
   NECPLOG(LOG_ERR, "necp_client_update_cache copyin ecn cache buffer error (%d)", error);
   goto done_unlock;
  }

  if (client->current_route != ((void*)0) && client->current_route->rt_ifp != ((void*)0)) {
   if (!client->platform_binary) {
       ecn_cache_buffer.necp_tcp_ecn_heuristics_success = 0;
   }
   tcp_heuristics_ecn_update(&ecn_cache_buffer, client->current_route->rt_ifp,
        (union sockaddr_in_4_6 *)&flow->local_addr);
  }
 } else if (cache_buffer.necp_cache_buf_type == NECP_CLIENT_CACHE_TYPE_TFO &&
      cache_buffer.necp_cache_buf_ver == NECP_CLIENT_CACHE_TYPE_TFO_VER_1) {
  if (cache_buffer.necp_cache_buf_size != sizeof(necp_tcp_tfo_cache) ||
      cache_buffer.necp_cache_buf_addr == USER_ADDR_NULL) {
   error = EINVAL;
   goto done_unlock;
  }

  necp_tcp_tfo_cache tfo_cache_buffer;
  memset(&tfo_cache_buffer, 0, sizeof(tfo_cache_buffer));

  error = copyin(cache_buffer.necp_cache_buf_addr, &tfo_cache_buffer, sizeof(necp_tcp_tfo_cache));
  if (error) {
   NECPLOG(LOG_ERR, "necp_client_update_cache copyin tfo cache buffer error (%d)", error);
   goto done_unlock;
  }

  if (client->current_route != ((void*)0) && client->current_route->rt_ifp != ((void*)0)) {
   if (!client->platform_binary) {
       tfo_cache_buffer.necp_tcp_tfo_heuristics_success = 0;
   }
   tcp_heuristics_tfo_update(&tfo_cache_buffer, client->current_route->rt_ifp,
        (union sockaddr_in_4_6 *)&flow->local_addr,
        (union sockaddr_in_4_6 *)&flow->remote_addr);
  }
 } else {
     error = EINVAL;
 }
done_unlock:
 NECP_CLIENT_ROUTE_UNLOCK(client);
 NECP_CLIENT_UNLOCK(client);
 NECP_FD_UNLOCK(fd_data);
done:
 *retval = error;
 return (error);
}
