
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_7__ {int NumItem; TYPE_1__* Items; int HubName; } ;
struct TYPE_6__ {void* TcpStatus; void* RecvSize; void* SendSize; void* LastCommTime; void* CreatedTime; void* DestPort; int DestHost; void* DestIp; void* SrcPort; int SrcHost; void* SrcIp; void* Protocol; void* Id; } ;
typedef TYPE_1__ RPC_ENUM_NAT_ITEM ;
typedef TYPE_2__ RPC_ENUM_NAT ;
typedef int PACK ;


 int PackGetInt (int *,char*) ;
 void* PackGetInt64Ex (int *,char*,size_t) ;
 void* PackGetIntEx (int *,char*,size_t) ;
 int PackGetStr (int *,char*,int ,int) ;
 int PackGetStrEx (int *,char*,int ,int,size_t) ;
 int Zero (TYPE_2__*,int) ;
 TYPE_1__* ZeroMalloc (int) ;

void InRpcEnumNat(RPC_ENUM_NAT *t, PACK *p)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_ENUM_NAT));
 t->NumItem = PackGetInt(p, "NumItem");
 PackGetStr(p, "HubName", t->HubName, sizeof(t->HubName));
 t->Items = ZeroMalloc(sizeof(RPC_ENUM_NAT_ITEM) * t->NumItem);
 for (i = 0;i < t->NumItem;i++)
 {
  RPC_ENUM_NAT_ITEM *e = &t->Items[i];

  e->Id = PackGetIntEx(p, "Id", i);
  e->Protocol = PackGetIntEx(p, "Protocol", i);
  e->SrcIp = PackGetIntEx(p, "SrcIp", i);
  PackGetStrEx(p, "SrcHost", e->SrcHost, sizeof(e->SrcHost), i);
  e->SrcPort = PackGetIntEx(p, "SrcPort", i);
  e->DestIp = PackGetIntEx(p, "DestIp", i);
  PackGetStrEx(p, "DestHost", e->DestHost, sizeof(e->DestHost), i);
  e->DestPort = PackGetIntEx(p, "DestPort", i);
  e->CreatedTime = PackGetInt64Ex(p, "CreatedTime", i);
  e->LastCommTime = PackGetInt64Ex(p, "LastCommTime", i);
  e->SendSize = PackGetInt64Ex(p, "SendSize", i);
  e->RecvSize = PackGetInt64Ex(p, "RecvSize", i);
  e->TcpStatus = PackGetIntEx(p, "TcpStatus", i);
 }
}
