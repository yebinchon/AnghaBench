
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int UCHAR ;
typedef int RUDP_STACK_RPC_RECV_PROC ;
typedef int RUDP_STACK_INTERRUPTS_PROC ;
typedef int RUDP_STACK ;
typedef int IP ;


 scalar_t__ IsEmptyStr (char*) ;
 int ListenTcpForPopupFirewallDialog () ;
 int * NewRUDP (int,char*,int *,int *,void*,int ,int *,int *,int,int,int *,int volatile*,int ,int *) ;
 scalar_t__ g_no_rudp_server ;

RUDP_STACK *NewRUDPServer(char *svc_name, RUDP_STACK_INTERRUPTS_PROC *proc_interrupts, RUDP_STACK_RPC_RECV_PROC *proc_rpc_recv, void *param, UINT port, bool no_natt_register, bool over_dns_mode, volatile UINT *natt_global_udp_port, UCHAR rand_port_id, IP *listen_ip)
{
 RUDP_STACK *r;

 if (IsEmptyStr(svc_name))
 {
  return ((void*)0);
 }

 if (g_no_rudp_server)
 {
  return ((void*)0);
 }

 ListenTcpForPopupFirewallDialog();

 r = NewRUDP(1, svc_name, proc_interrupts, proc_rpc_recv, param, port, ((void*)0), ((void*)0), no_natt_register, over_dns_mode, ((void*)0), natt_global_udp_port, rand_port_id, listen_ip);

 if (r == ((void*)0))
 {
  return ((void*)0);
 }

 return r;
}
