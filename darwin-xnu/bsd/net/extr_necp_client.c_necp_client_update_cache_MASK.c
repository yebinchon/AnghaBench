#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_6__* uuid_t ;
typedef  union sockaddr_in_4_6 {int dummy; } sockaddr_in_4_6 ;
typedef  int /*<<< orphan*/  tfo_cache_buffer ;
struct necp_fd_data {int dummy; } ;
struct necp_client_flow_registration {int /*<<< orphan*/  flow_list; } ;
struct TYPE_16__ {scalar_t__ sa_family; } ;
struct TYPE_20__ {TYPE_1__ sa; } ;
struct TYPE_17__ {scalar_t__ sa_family; } ;
struct TYPE_19__ {TYPE_2__ sa; } ;
struct necp_client_flow {TYPE_5__ remote_addr; TYPE_4__ local_addr; } ;
struct necp_client_action_args {scalar_t__ client_id; int client_id_len; int buffer_size; scalar_t__ buffer; } ;
struct necp_client {TYPE_3__* current_route; int /*<<< orphan*/  platform_binary; } ;
struct TYPE_21__ {scalar_t__ necp_cache_buf_type; scalar_t__ necp_cache_buf_ver; int necp_cache_buf_size; scalar_t__ necp_cache_buf_addr; scalar_t__ necp_tcp_tfo_heuristics_success; scalar_t__ necp_tcp_ecn_heuristics_success; } ;
typedef  TYPE_6__ necp_tcp_tfo_cache ;
typedef  TYPE_6__ necp_tcp_ecn_cache ;
typedef  TYPE_6__ necp_cache_buffer ;
typedef  int /*<<< orphan*/  ecn_cache_buffer ;
typedef  int /*<<< orphan*/  cache_buffer ;
struct TYPE_18__ {int /*<<< orphan*/ * rt_ifp; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int EINVAL ; 
 int ENOENT ; 
 struct necp_client_flow* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ NECP_CLIENT_CACHE_TYPE_ECN ; 
 scalar_t__ NECP_CLIENT_CACHE_TYPE_ECN_VER_1 ; 
 scalar_t__ NECP_CLIENT_CACHE_TYPE_TFO ; 
 scalar_t__ NECP_CLIENT_CACHE_TYPE_TFO_VER_1 ; 
 int /*<<< orphan*/  FUNC2 (struct necp_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct necp_client*) ; 
 int /*<<< orphan*/  FUNC4 (struct necp_client*) ; 
 int /*<<< orphan*/  FUNC5 (struct necp_fd_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct necp_fd_data*) ; 
 scalar_t__ USER_ADDR_NULL ; 
 int FUNC7 (scalar_t__,TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 struct necp_client* FUNC9 (struct necp_fd_data*,TYPE_6__*) ; 
 struct necp_client_flow_registration* FUNC10 (struct necp_client*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,int /*<<< orphan*/ *,union sockaddr_in_4_6*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*,int /*<<< orphan*/ *,union sockaddr_in_4_6*,union sockaddr_in_4_6*) ; 

__attribute__((used)) static int
FUNC13(struct necp_fd_data *fd_data, struct necp_client_action_args *uap, int *retval)
{
	int error = 0;
	struct necp_client *client = NULL;
	uuid_t client_id;

	if (uap->client_id == 0 || uap->client_id_len != sizeof(uuid_t)) {
		error = EINVAL;
		goto done;
	}

	error = FUNC7(uap->client_id, client_id, sizeof(uuid_t));
	if (error) {
		FUNC1(LOG_ERR, "necp_client_update_cache copyin client_id error (%d)", error);
		goto done;
	}

	FUNC5(fd_data);
	client = FUNC9(fd_data, client_id);
	if (client == NULL) {
		FUNC6(fd_data);
		error = ENOENT;
		goto done;
	}

	struct necp_client_flow_registration *flow_registration = FUNC10(client, client_id);
	if (flow_registration == NULL) {
		FUNC4(client);
		FUNC6(fd_data);
		error = ENOENT;
		goto done;
	}

	FUNC2(client);
	// This needs to be changed when TFO/ECN is supported by multiple flows
	struct necp_client_flow *flow = FUNC0(&flow_registration->flow_list);
	if (flow == NULL ||
		(flow->remote_addr.sa.sa_family != AF_INET &&
		 flow->remote_addr.sa.sa_family != AF_INET6) ||
		(flow->local_addr.sa.sa_family != AF_INET &&
		 flow->local_addr.sa.sa_family != AF_INET6)) {
		error = EINVAL;
		FUNC1(LOG_ERR, "necp_client_update_cache no flow error (%d)", error);
		goto done_unlock;
	}

	necp_cache_buffer cache_buffer;
	FUNC8(&cache_buffer, 0, sizeof(cache_buffer));

	if (uap->buffer_size != sizeof(necp_cache_buffer) ||
		uap->buffer == USER_ADDR_NULL) {
		error = EINVAL;
		goto done_unlock;
	}

	error = FUNC7(uap->buffer, &cache_buffer, sizeof(cache_buffer));
	if (error) {
		FUNC1(LOG_ERR, "necp_client_update_cache copyin cache buffer error (%d)", error);
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
		FUNC8(&ecn_cache_buffer, 0, sizeof(ecn_cache_buffer));

		error = FUNC7(cache_buffer.necp_cache_buf_addr, &ecn_cache_buffer, sizeof(necp_tcp_ecn_cache));
		if (error) {
			FUNC1(LOG_ERR, "necp_client_update_cache copyin ecn cache buffer error (%d)", error);
			goto done_unlock;
		}

		if (client->current_route != NULL && client->current_route->rt_ifp != NULL) {
			if (!client->platform_binary) {
			    ecn_cache_buffer.necp_tcp_ecn_heuristics_success = 0;
			}
			FUNC11(&ecn_cache_buffer, client->current_route->rt_ifp,
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
		FUNC8(&tfo_cache_buffer, 0, sizeof(tfo_cache_buffer));

		error = FUNC7(cache_buffer.necp_cache_buf_addr, &tfo_cache_buffer, sizeof(necp_tcp_tfo_cache));
		if (error) {
			FUNC1(LOG_ERR, "necp_client_update_cache copyin tfo cache buffer error (%d)", error);
			goto done_unlock;
		}

		if (client->current_route != NULL && client->current_route->rt_ifp != NULL) {
			if (!client->platform_binary) {
			    tfo_cache_buffer.necp_tcp_tfo_heuristics_success = 0;
			}
			FUNC12(&tfo_cache_buffer, client->current_route->rt_ifp,
						  (union sockaddr_in_4_6 *)&flow->local_addr,
						  (union sockaddr_in_4_6 *)&flow->remote_addr);
		}
	} else {
	    error = EINVAL;
	}
done_unlock:
	FUNC3(client);
	FUNC4(client);
	FUNC6(fd_data);
done:
	*retval = error;
	return (error);
}