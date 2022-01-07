
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_7__ {int NumCa; TYPE_1__* Ca; int HubName; } ;
struct TYPE_6__ {int Expires; int IssuerName; int SubjectName; int Key; } ;
typedef TYPE_1__ RPC_HUB_ENUM_CA_ITEM ;
typedef TYPE_2__ RPC_HUB_ENUM_CA ;
typedef int PACK ;


 int PackGetIndexCount (int *,char*) ;
 int PackGetInt64Ex (int *,char*,size_t) ;
 int PackGetIntEx (int *,char*,size_t) ;
 int PackGetStr (int *,char*,int ,int) ;
 int PackGetUniStrEx (int *,char*,int ,int,size_t) ;
 int Zero (TYPE_2__*,int) ;
 TYPE_1__* ZeroMalloc (int) ;

void InRpcHubEnumCa(RPC_HUB_ENUM_CA *t, PACK *p)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_HUB_ENUM_CA));
 PackGetStr(p, "HubName", t->HubName, sizeof(t->HubName));
 t->NumCa = PackGetIndexCount(p, "Key");
 t->Ca = ZeroMalloc(sizeof(RPC_HUB_ENUM_CA_ITEM) * t->NumCa);

 for (i = 0;i < t->NumCa;i++)
 {
  RPC_HUB_ENUM_CA_ITEM *e = &t->Ca[i];

  e->Key = PackGetIntEx(p, "Key", i);
  PackGetUniStrEx(p, "SubjectName", e->SubjectName, sizeof(e->SubjectName), i);
  PackGetUniStrEx(p, "IssuerName", e->IssuerName, sizeof(e->IssuerName), i);
  e->Expires = PackGetInt64Ex(p, "Expires", i);
 }
}
