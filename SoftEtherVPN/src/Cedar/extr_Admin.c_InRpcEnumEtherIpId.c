
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_7__ {int Password; int UserName; int HubName; int Id; } ;
struct TYPE_6__ {int NumItem; TYPE_2__* IdList; } ;
typedef TYPE_1__ RPC_ENUM_ETHERIP_ID ;
typedef int PACK ;
typedef TYPE_2__ ETHERIP_ID ;


 int PackGetInt (int *,char*) ;
 int PackGetStrEx (int *,char*,int ,int,size_t) ;
 int Zero (TYPE_1__*,int) ;
 TYPE_2__* ZeroMalloc (int) ;

void InRpcEnumEtherIpId(RPC_ENUM_ETHERIP_ID *t, PACK *p)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_ENUM_ETHERIP_ID));

 t->NumItem = PackGetInt(p, "NumItem");
 t->IdList = ZeroMalloc(sizeof(ETHERIP_ID) * t->NumItem);

 for (i = 0;i < t->NumItem;i++)
 {
  ETHERIP_ID *e = &t->IdList[i];

  PackGetStrEx(p, "Id", e->Id, sizeof(e->Id), i);
  PackGetStrEx(p, "HubName", e->HubName, sizeof(e->HubName), i);
  PackGetStrEx(p, "UserName", e->UserName, sizeof(e->UserName), i);
  PackGetStrEx(p, "Password", e->Password, sizeof(e->Password), i);
 }
}
