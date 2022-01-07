
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct necp_client_flow_registration {int flow_list; } ;
struct TYPE_2__ {int cb; struct inpcb* socket_handle; } ;
struct necp_client_flow {TYPE_1__ u; int socket; } ;
struct inpcb {int necp_cb; } ;


 int LIST_INSERT_HEAD (int *,struct necp_client_flow*,int ) ;
 int LOG_ERR ;
 int MCR_SLEEP ;
 int NECPLOG0 (int ,char*) ;
 int OSIncrementAtomic (int *) ;
 int TRUE ;
 int flow_chain ;
 struct necp_client_flow* mcache_alloc (int ,int ) ;
 int memset (struct necp_client_flow*,int ,int) ;
 int necp_flow_cache ;
 int necp_socket_flow_count ;

__attribute__((used)) static void
necp_client_add_socket_flow(struct necp_client_flow_registration *flow_registration,
       struct inpcb *inp)
{
 struct necp_client_flow *new_flow = mcache_alloc(necp_flow_cache, MCR_SLEEP);
 if (new_flow == ((void*)0)) {
  NECPLOG0(LOG_ERR, "Failed to allocate socket flow");
  return;
 }

 memset(new_flow, 0, sizeof(*new_flow));

 new_flow->socket = TRUE;
 new_flow->u.socket_handle = inp;
 new_flow->u.cb = inp->necp_cb;

 OSIncrementAtomic(&necp_socket_flow_count);

 LIST_INSERT_HEAD(&flow_registration->flow_list, new_flow, flow_chain);
}
