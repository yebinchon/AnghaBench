
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_9__ {TYPE_1__* UdpSock; } ;
struct TYPE_8__ {int ListenMode; int Connected; TYPE_3__* R_UDP_Stack; int LocalPort; int Type; } ;
struct TYPE_7__ {int LocalPort; } ;
typedef TYPE_2__ SOCK ;
typedef int RUDP_STACK_RPC_RECV_PROC ;
typedef int RUDP_STACK_INTERRUPTS_PROC ;
typedef TYPE_3__ RUDP_STACK ;
typedef int IP ;


 TYPE_3__* NewRUDPServer (char*,int *,int *,void*,int ,int,int,int volatile*,int ,int *) ;
 TYPE_2__* NewSock () ;
 int SOCK_RUDP_LISTEN ;

SOCK *ListenRUDPEx(char *svc_name, RUDP_STACK_INTERRUPTS_PROC *proc_interrupts, RUDP_STACK_RPC_RECV_PROC *proc_rpc_recv, void *param, UINT port, bool no_natt_register, bool over_dns_mode,
       volatile UINT *natt_global_udp_port, UCHAR rand_port_id, IP *listen_ip)
{
 SOCK *s;
 RUDP_STACK *r;


 r = NewRUDPServer(svc_name, proc_interrupts, proc_rpc_recv, param, port, no_natt_register, over_dns_mode, natt_global_udp_port, rand_port_id, listen_ip);
 if (r == ((void*)0))
 {
  return ((void*)0);
 }

 s = NewSock();

 s->Type = SOCK_RUDP_LISTEN;
 s->ListenMode = 1;
 s->Connected = 1;

 s->LocalPort = r->UdpSock->LocalPort;

 s->R_UDP_Stack = r;

 return s;
}
