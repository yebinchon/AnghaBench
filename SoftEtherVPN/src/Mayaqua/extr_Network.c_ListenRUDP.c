
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int SOCK ;
typedef int RUDP_STACK_RPC_RECV_PROC ;
typedef int RUDP_STACK_INTERRUPTS_PROC ;


 int * ListenRUDPEx (char*,int *,int *,void*,int ,int,int,int *,int ,int *) ;

SOCK *ListenRUDP(char *svc_name, RUDP_STACK_INTERRUPTS_PROC *proc_interrupts, RUDP_STACK_RPC_RECV_PROC *proc_rpc_recv, void *param, UINT port, bool no_natt_register, bool over_dns_mode)
{
 return ListenRUDPEx(svc_name, proc_interrupts, proc_rpc_recv, param, port, no_natt_register, over_dns_mode, ((void*)0), 0, ((void*)0));
}
