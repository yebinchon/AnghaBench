
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_6__ {int NumItem; TYPE_1__** Items; } ;
struct TYPE_5__ {int Expires; int IssuerName; int SubjectName; int Key; } ;
typedef TYPE_1__ RPC_CLIENT_ENUM_CA_ITEM ;
typedef TYPE_2__ RPC_CLIENT_ENUM_CA ;
typedef int PACK ;


 int PackGetInt64Ex (int *,char*,scalar_t__) ;
 int PackGetIntEx (int *,char*,scalar_t__) ;
 int PackGetNum (int *,char*) ;
 int PackGetUniStrEx (int *,char*,int ,int,scalar_t__) ;
 int Zero (TYPE_2__*,int) ;
 void* ZeroMalloc (int) ;

void InRpcClientEnumCa(RPC_CLIENT_ENUM_CA *e, PACK *p)
{
 UINT i;

 if (e == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(e, sizeof(RPC_CLIENT_ENUM_CA));
 e->NumItem = PackGetNum(p, "NumItem");

 e->Items = ZeroMalloc(sizeof(RPC_CLIENT_ENUM_CA_ITEM *) * e->NumItem);
 for (i = 0;i < e->NumItem;i++)
 {
  RPC_CLIENT_ENUM_CA_ITEM *item = ZeroMalloc(sizeof(RPC_CLIENT_ENUM_CA_ITEM));
  e->Items[i] = item;

  item->Key = PackGetIntEx(p, "Key", i);
  PackGetUniStrEx(p, "SubjectName", item->SubjectName, sizeof(item->SubjectName), i);
  PackGetUniStrEx(p, "IssuerName", item->IssuerName, sizeof(item->IssuerName), i);
  item->Expires = PackGetInt64Ex(p, "Expires", i);
 }
}
