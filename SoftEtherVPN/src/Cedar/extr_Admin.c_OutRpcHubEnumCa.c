
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {size_t NumCa; TYPE_1__* Ca; int HubName; } ;
struct TYPE_4__ {int Expires; int IssuerName; int SubjectName; int Key; } ;
typedef TYPE_1__ RPC_HUB_ENUM_CA_ITEM ;
typedef TYPE_2__ RPC_HUB_ENUM_CA ;
typedef int PACK ;


 int PackAddIntEx (int *,char*,int ,size_t,size_t) ;
 int PackAddStr (int *,char*,int ) ;
 int PackAddTime64Ex (int *,char*,int ,size_t,size_t) ;
 int PackAddUniStrEx (int *,char*,int ,size_t,size_t) ;
 int PackSetCurrentJsonGroupName (int *,char*) ;

void OutRpcHubEnumCa(PACK *p, RPC_HUB_ENUM_CA *t)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }
 PackAddStr(p, "HubName", t->HubName);

 PackSetCurrentJsonGroupName(p, "CAList");
 for (i = 0;i < t->NumCa;i++)
 {
  RPC_HUB_ENUM_CA_ITEM *e = &t->Ca[i];

  PackAddIntEx(p, "Key", e->Key, i, t->NumCa);
  PackAddUniStrEx(p, "SubjectName", e->SubjectName, i, t->NumCa);
  PackAddUniStrEx(p, "IssuerName", e->IssuerName, i, t->NumCa);
  PackAddTime64Ex(p, "Expires", e->Expires, i, t->NumCa);
 }
 PackSetCurrentJsonGroupName(p, ((void*)0));
}
