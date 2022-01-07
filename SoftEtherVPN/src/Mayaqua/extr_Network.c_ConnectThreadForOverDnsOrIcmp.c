
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Delay; scalar_t__ RUdpProtocol; int Ok; int Finished; int FinishEvent; int FinishedTick; int * Result_Nat_T_Sock; int CancelFlag; int Timeout; int NatT_ErrorCode; int Ip; int SvcName; } ;
typedef int THREAD ;
typedef int SOCK ;
typedef TYPE_1__ CONNECT_TCP_RUDP_PARAM ;


 int IP_PROTO_ICMPV4 ;
 int MAKE_SPECIAL_PORT (int ) ;
 int * NewRUDPClientDirect (int ,int *,int,int *,int ,int ,int *,int *,int,int) ;
 scalar_t__ RUDP_PROTOCOL_DNS ;
 int Set (int ) ;
 int Tick64 () ;
 int WaitEx (int *,int,int ) ;

void ConnectThreadForOverDnsOrIcmp(THREAD *thread, void *param)
{
 SOCK *sock;
 CONNECT_TCP_RUDP_PARAM *p = (CONNECT_TCP_RUDP_PARAM *)param;
 if (thread == ((void*)0) || p == ((void*)0))
 {
  return;
 }


 if (p->Delay >= 1)
 {
  WaitEx(((void*)0), p->Delay, p->CancelFlag);
 }


 sock = NewRUDPClientDirect(p->SvcName, &p->Ip,
  (p->RUdpProtocol == RUDP_PROTOCOL_DNS ? 53 : MAKE_SPECIAL_PORT(IP_PROTO_ICMPV4)),
  &p->NatT_ErrorCode, p->Timeout, p->CancelFlag, ((void*)0), ((void*)0),
  (p->RUdpProtocol == RUDP_PROTOCOL_DNS ? 0 : MAKE_SPECIAL_PORT(IP_PROTO_ICMPV4)),
  (p->RUdpProtocol == RUDP_PROTOCOL_DNS ? 1 : 0));

 p->Result_Nat_T_Sock = sock;
 p->Ok = (p->Result_Nat_T_Sock == ((void*)0) ? 0 : 1);
 p->FinishedTick = Tick64();
 p->Finished = 1;

 Set(p->FinishEvent);
}
