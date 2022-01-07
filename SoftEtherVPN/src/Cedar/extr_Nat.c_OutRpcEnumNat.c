
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {size_t NumItem; TYPE_1__* Items; int HubName; } ;
struct TYPE_4__ {int TcpStatus; int RecvSize; int SendSize; int LastCommTime; int CreatedTime; int DestPort; int DestHost; int DestIp; int SrcPort; int SrcHost; int SrcIp; int Protocol; int Id; } ;
typedef TYPE_1__ RPC_ENUM_NAT_ITEM ;
typedef TYPE_2__ RPC_ENUM_NAT ;
typedef int PACK ;


 int PackAddInt (int *,char*,size_t) ;
 int PackAddInt64Ex (int *,char*,int ,size_t,size_t) ;
 int PackAddIntEx (int *,char*,int ,size_t,size_t) ;
 int PackAddIp32Ex (int *,char*,int ,size_t,size_t) ;
 int PackAddStr (int *,char*,int ) ;
 int PackAddStrEx (int *,char*,int ,size_t,size_t) ;
 int PackAddTime64Ex (int *,char*,int ,size_t,size_t) ;
 int PackSetCurrentJsonGroupName (int *,char*) ;

void OutRpcEnumNat(PACK *p, RPC_ENUM_NAT *t)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddInt(p, "NumItem", t->NumItem);
 PackAddStr(p, "HubName", t->HubName);

 PackSetCurrentJsonGroupName(p, "NatTable");
 for (i = 0;i < t->NumItem;i++)
 {
  RPC_ENUM_NAT_ITEM *e = &t->Items[i];

  PackAddIntEx(p, "Id", e->Id, i, t->NumItem);
  PackAddIntEx(p, "Protocol", e->Protocol, i, t->NumItem);
  PackAddIp32Ex(p, "SrcIp", e->SrcIp, i, t->NumItem);
  PackAddStrEx(p, "SrcHost", e->SrcHost, i, t->NumItem);
  PackAddIntEx(p, "SrcPort", e->SrcPort, i, t->NumItem);
  PackAddIp32Ex(p, "DestIp", e->DestIp, i, t->NumItem);
  PackAddStrEx(p, "DestHost", e->DestHost, i, t->NumItem);
  PackAddIntEx(p, "DestPort", e->DestPort, i, t->NumItem);
  PackAddTime64Ex(p, "CreatedTime", e->CreatedTime, i, t->NumItem);
  PackAddTime64Ex(p, "LastCommTime", e->LastCommTime, i, t->NumItem);
  PackAddInt64Ex(p, "SendSize", e->SendSize, i, t->NumItem);
  PackAddInt64Ex(p, "RecvSize", e->RecvSize, i, t->NumItem);
  PackAddIntEx(p, "TcpStatus", e->TcpStatus, i, t->NumItem);
 }
 PackSetCurrentJsonGroupName(p, ((void*)0));
}
