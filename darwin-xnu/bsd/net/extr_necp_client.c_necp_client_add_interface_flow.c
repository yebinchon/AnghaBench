
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct necp_client_flow_registration {int flow_list; int interface_cb; int interface_handle; } ;
struct TYPE_2__ {int cb; int socket_handle; } ;
struct necp_client_flow {TYPE_1__ u; int interface_index; } ;


 int LIST_INSERT_HEAD (int *,struct necp_client_flow*,int ) ;
 int LOG_ERR ;
 int MCR_SLEEP ;
 int NECPLOG0 (int ,char*) ;
 int OSIncrementAtomic (int *) ;
 int flow_chain ;
 struct necp_client_flow* mcache_alloc (int ,int ) ;
 int memset (struct necp_client_flow*,int ,int) ;
 int necp_flow_cache ;
 int necp_if_flow_count ;

__attribute__((used)) static struct necp_client_flow *
necp_client_add_interface_flow(struct necp_client_flow_registration *flow_registration,
          uint32_t interface_index)
{
 struct necp_client_flow *new_flow = mcache_alloc(necp_flow_cache, MCR_SLEEP);
 if (new_flow == ((void*)0)) {
  NECPLOG0(LOG_ERR, "Failed to allocate interface flow");
  return ((void*)0);
 }

 memset(new_flow, 0, sizeof(*new_flow));


 new_flow->interface_index = interface_index;
 new_flow->u.socket_handle = flow_registration->interface_handle;
 new_flow->u.cb = flow_registration->interface_cb;

 OSIncrementAtomic(&necp_if_flow_count);

 LIST_INSERT_HEAD(&flow_registration->flow_list, new_flow, flow_chain);

 return new_flow;
}
