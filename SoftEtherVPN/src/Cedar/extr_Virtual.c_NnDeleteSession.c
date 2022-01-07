
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int NatTableForRecv; int NatTableForSend; int v; } ;
struct TYPE_7__ {int Protocol; int Id; int Status; int LastSeq; int LastAck; int SrcPort; int SrcIp; int DestPort; int DestIp; } ;
typedef TYPE_1__ NATIVE_NAT_ENTRY ;
typedef TYPE_2__ NATIVE_NAT ;


 int Debug (char*,int ) ;
 int DeleteHash (int ,TYPE_1__*) ;
 int Free (TYPE_1__*) ;


 int NAT_TCP_CONNECTING ;

 int NLog (int ,char*,int ) ;
 int SendTcp (int ,int ,int ,int ,int ,int ,int ,int,int ,int ,int *,int ) ;
 int TCP_ACK ;
 int TCP_RST ;

void NnDeleteSession(NATIVE_NAT *t, NATIVE_NAT_ENTRY *e)
{

 if (t == ((void*)0) || e == ((void*)0))
 {
  return;
 }

 switch (e->Protocol)
 {
 case 129:

  SendTcp(t->v, e->DestIp, e->DestPort, e->SrcIp, e->SrcPort,
   e->LastAck, e->LastSeq + (e->Status == NAT_TCP_CONNECTING ? 1 : 0), TCP_RST | TCP_ACK, 0, 0, ((void*)0), 0);

  NLog(t->v, "LH_NAT_TCP_DELETED", e->Id);
  break;

 case 128:
  NLog(t->v, "LH_NAT_UDP_DELETED", e->Id);
  break;

 case 130:
  Debug("NAT ICMP %u Deleted.\n", e->Id);
  break;
 }

 DeleteHash(t->NatTableForSend, e);
 DeleteHash(t->NatTableForRecv, e);

 Free(e);
}
