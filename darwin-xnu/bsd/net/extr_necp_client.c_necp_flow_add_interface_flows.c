
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int32_t ;
struct necp_client_interface_option {int interface_index; } ;
struct necp_client_flow_registration {int interface_handle; } ;
struct TYPE_2__ {int (* cb ) (int ,int ,int ,int ,int*) ;} ;
struct necp_client_flow {int viable; int necp_flow_flags; int interface_index; TYPE_1__ u; } ;
struct necp_client {size_t interface_option_count; struct necp_client_interface_option* extra_interface_options; struct necp_client_interface_option* interface_options; } ;
typedef int proc_t ;


 int NECP_CLIENT_CBACTION_INITIAL ;
 size_t NECP_CLIENT_INTERFACE_OPTION_STATIC_COUNT ;
 struct necp_client_flow* necp_client_add_interface_flow_if_needed (struct necp_client*,struct necp_client_flow_registration*,int ) ;
 void* necp_client_flow_is_viable (int ,struct necp_client*,struct necp_client_flow*) ;
 int stub1 (int ,int ,int ,int ,int*) ;
 int stub2 (int ,int ,int ,int ,int*) ;

__attribute__((used)) static void
necp_flow_add_interface_flows(proc_t proc,
         struct necp_client *client,
         struct necp_client_flow_registration *flow_registration,
         bool send_initial)
{

 for (u_int32_t option_i = 0; option_i < client->interface_option_count; option_i++) {
  if (option_i < NECP_CLIENT_INTERFACE_OPTION_STATIC_COUNT) {
   struct necp_client_interface_option *option = &client->interface_options[option_i];
   struct necp_client_flow *flow = necp_client_add_interface_flow_if_needed(client, flow_registration, option->interface_index);
   if (flow != ((void*)0) && send_initial) {
    flow->viable = necp_client_flow_is_viable(proc, client, flow);
    if (flow->viable && flow->u.cb) {
     bool viable = flow->viable;
     flow->u.cb(flow_registration->interface_handle, NECP_CLIENT_CBACTION_INITIAL, flow->interface_index, flow->necp_flow_flags, &viable);
     flow->viable = viable;
    }
   }
  } else {
   struct necp_client_interface_option *option = &client->extra_interface_options[option_i - NECP_CLIENT_INTERFACE_OPTION_STATIC_COUNT];
   struct necp_client_flow *flow = necp_client_add_interface_flow_if_needed(client, flow_registration, option->interface_index);
   if (flow != ((void*)0) && send_initial) {
    flow->viable = necp_client_flow_is_viable(proc, client, flow);
    if (flow->viable && flow->u.cb) {
     bool viable = flow->viable;
     flow->u.cb(flow_registration->interface_handle, NECP_CLIENT_CBACTION_INITIAL, flow->interface_index, flow->necp_flow_flags, &viable);
     flow->viable = viable;
    }
   }
  }
 }
}
