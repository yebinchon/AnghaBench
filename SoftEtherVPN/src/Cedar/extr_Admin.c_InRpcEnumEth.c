
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_7__ {int NumItem; TYPE_1__* Items; } ;
struct TYPE_6__ {int NetworkConnectionName; int DeviceName; } ;
typedef TYPE_1__ RPC_ENUM_ETH_ITEM ;
typedef TYPE_2__ RPC_ENUM_ETH ;
typedef int PACK ;


 int PackGetInt (int *,char*) ;
 int PackGetStrEx (int *,char*,int ,int,size_t) ;
 int PackGetUniStrEx (int *,char*,int ,int,size_t) ;
 int Zero (TYPE_2__*,int) ;
 TYPE_1__* ZeroMalloc (int) ;

void InRpcEnumEth(RPC_ENUM_ETH *t, PACK *p)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_ENUM_ETH));
 t->NumItem = PackGetInt(p, "NumItem");
 t->Items = ZeroMalloc(sizeof(RPC_ENUM_ETH_ITEM) * t->NumItem);

 for (i = 0;i < t->NumItem;i++)
 {
  RPC_ENUM_ETH_ITEM *e = &t->Items[i];
  PackGetStrEx(p, "DeviceName", e->DeviceName, sizeof(e->DeviceName), i);
  PackGetUniStrEx(p, "NetworkConnectionName", e->NetworkConnectionName, sizeof(e->NetworkConnectionName), i);
 }
}
