
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {size_t NumItem; TYPE_1__** Items; } ;
struct TYPE_4__ {int Expires; int IssuerName; int SubjectName; int Key; } ;
typedef TYPE_1__ RPC_CLIENT_ENUM_CA_ITEM ;
typedef TYPE_2__ RPC_CLIENT_ENUM_CA ;
typedef int PACK ;


 int PackAddIntEx (int *,char*,int ,size_t,size_t) ;
 int PackAddNum (int *,char*,size_t) ;
 int PackAddTime64Ex (int *,char*,int ,size_t,size_t) ;
 int PackAddUniStrEx (int *,char*,int ,size_t,size_t) ;
 int PackSetCurrentJsonGroupName (int *,char*) ;

void OutRpcClientEnumCa(PACK *p, RPC_CLIENT_ENUM_CA *e)
{
 UINT i;

 if (e == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddNum(p, "NumItem", e->NumItem);

 PackSetCurrentJsonGroupName(p, "CAList");
 for (i = 0;i < e->NumItem;i++)
 {
  RPC_CLIENT_ENUM_CA_ITEM *item = e->Items[i];
  PackAddIntEx(p, "Key", item->Key, i, e->NumItem);
  PackAddUniStrEx(p, "SubjectName", item->SubjectName, i, e->NumItem);
  PackAddUniStrEx(p, "IssuerName", item->IssuerName, i, e->NumItem);
  PackAddTime64Ex(p, "Expires", item->Expires, i, e->NumItem);
 }
 PackSetCurrentJsonGroupName(p, ((void*)0));
}
