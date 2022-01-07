
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct necp_client_flow_registration {int interface_cb; struct mppcb* interface_handle; } ;
struct necp_client {int proc_pid; } ;
struct mppcb {int necp_cb; } ;
typedef scalar_t__ proc_t ;


 scalar_t__ PROC_NULL ;
 int necp_flow_add_interface_flows (scalar_t__,struct necp_client*,struct necp_client_flow_registration*,int) ;
 scalar_t__ proc_find (int ) ;
 int proc_rele (scalar_t__) ;

__attribute__((used)) static void
necp_client_add_multipath_interface_flows(struct necp_client_flow_registration *flow_registration,
            struct necp_client *client,
            struct mppcb *mpp)
{
 flow_registration->interface_handle = mpp;
 flow_registration->interface_cb = mpp->necp_cb;

 proc_t proc = proc_find(client->proc_pid);
 if (proc == PROC_NULL) {
  return;
 }


 necp_flow_add_interface_flows(proc, client, flow_registration, 1);

 proc_rele(proc);
 proc = PROC_NULL;
}
