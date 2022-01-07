
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_7__ {int NumItem; TYPE_1__* Items; int HubName; } ;
struct TYPE_6__ {int CrlInfo; int Key; } ;
typedef TYPE_1__ RPC_ENUM_CRL_ITEM ;
typedef TYPE_2__ RPC_ENUM_CRL ;
typedef int PACK ;


 int PackGetInt (int *,char*) ;
 int PackGetIntEx (int *,char*,size_t) ;
 int PackGetStr (int *,char*,int ,int) ;
 int PackGetUniStrEx (int *,char*,int ,int,size_t) ;
 int Zero (TYPE_2__*,int) ;
 TYPE_1__* ZeroMalloc (int) ;

void InRpcEnumCrl(RPC_ENUM_CRL *t, PACK *p)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_ENUM_CRL));
 PackGetStr(p, "HubName", t->HubName, sizeof(t->HubName));
 t->NumItem = PackGetInt(p, "NumItem");

 t->Items = ZeroMalloc(sizeof(RPC_ENUM_CRL_ITEM) * t->NumItem);
 for (i = 0;i < t->NumItem;i++)
 {
  RPC_ENUM_CRL_ITEM *e = &t->Items[i];

  e->Key = PackGetIntEx(p, "Key", i);
  PackGetUniStrEx(p, "CrlInfo", e->CrlInfo, sizeof(e->CrlInfo), i);
 }
}
