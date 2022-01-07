
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {int Password; int UserName; int HubName; int Id; } ;
struct TYPE_4__ {size_t NumItem; TYPE_2__* IdList; } ;
typedef TYPE_1__ RPC_ENUM_ETHERIP_ID ;
typedef int PACK ;
typedef TYPE_2__ ETHERIP_ID ;


 int PackAddInt (int *,char*,size_t) ;
 int PackAddStrEx (int *,char*,int ,size_t,size_t) ;
 int PackSetCurrentJsonGroupName (int *,char*) ;

void OutRpcEnumEtherIpId(PACK *p, RPC_ENUM_ETHERIP_ID *t)
{
 UINT i;

 if (p == ((void*)0) || t == ((void*)0))
 {
  return;
 }

 PackAddInt(p, "NumItem", t->NumItem);

 PackSetCurrentJsonGroupName(p, "Settings");
 for (i = 0;i < t->NumItem;i++)
 {
  ETHERIP_ID *e = &t->IdList[i];

  PackAddStrEx(p, "Id", e->Id, i, t->NumItem);
  PackAddStrEx(p, "HubName", e->HubName, i, t->NumItem);
  PackAddStrEx(p, "UserName", e->UserName, i, t->NumItem);
  PackAddStrEx(p, "Password", e->Password, i, t->NumItem);
 }
 PackSetCurrentJsonGroupName(p, ((void*)0));
}
