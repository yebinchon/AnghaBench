
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {size_t NumItem; TYPE_1__* Items; int HubName; } ;
struct TYPE_4__ {int CrlInfo; int Key; } ;
typedef TYPE_1__ RPC_ENUM_CRL_ITEM ;
typedef TYPE_2__ RPC_ENUM_CRL ;
typedef int PACK ;


 int PackAddInt (int *,char*,size_t) ;
 int PackAddIntEx (int *,char*,int ,size_t,size_t) ;
 int PackAddStr (int *,char*,int ) ;
 int PackAddUniStrEx (int *,char*,int ,size_t,size_t) ;
 int PackSetCurrentJsonGroupName (int *,char*) ;

void OutRpcEnumCrl(PACK *p, RPC_ENUM_CRL *t)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "HubName", t->HubName);
 PackAddInt(p, "NumItem", t->NumItem);

 PackSetCurrentJsonGroupName(p, "CRLList");
 for (i = 0;i < t->NumItem;i++)
 {
  RPC_ENUM_CRL_ITEM *e = &t->Items[i];

  PackAddIntEx(p, "Key", e->Key, i, t->NumItem);
  PackAddUniStrEx(p, "CrlInfo", e->CrlInfo, i, t->NumItem);
 }
 PackSetCurrentJsonGroupName(p, ((void*)0));
}
