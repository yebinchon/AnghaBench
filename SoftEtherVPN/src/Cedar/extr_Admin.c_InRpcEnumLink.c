
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_7__ {int NumLink; TYPE_1__* Links; int HubName; } ;
struct TYPE_6__ {int HubName; int LastError; void* Connected; int ConnectedTime; void* Online; int Hostname; int AccountName; } ;
typedef TYPE_1__ RPC_ENUM_LINK_ITEM ;
typedef TYPE_2__ RPC_ENUM_LINK ;
typedef int PACK ;


 void* PackGetBoolEx (int *,char*,size_t) ;
 int PackGetIndexCount (int *,char*) ;
 int PackGetInt64Ex (int *,char*,size_t) ;
 int PackGetIntEx (int *,char*,size_t) ;
 int PackGetStr (int *,char*,int ,int) ;
 int PackGetStrEx (int *,char*,int ,int,size_t) ;
 int PackGetUniStrEx (int *,char*,int ,int,size_t) ;
 int Zero (TYPE_2__*,int) ;
 TYPE_1__* ZeroMalloc (int) ;

void InRpcEnumLink(RPC_ENUM_LINK *t, PACK *p)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_ENUM_LINK));
 PackGetStr(p, "HubName", t->HubName, sizeof(t->HubName));
 t->NumLink = PackGetIndexCount(p, "AccountName");
 t->Links = ZeroMalloc(sizeof(RPC_ENUM_LINK_ITEM) * t->NumLink);

 for (i = 0;i < t->NumLink;i++)
 {
  RPC_ENUM_LINK_ITEM *e = &t->Links[i];

  PackGetUniStrEx(p, "AccountName", e->AccountName, sizeof(e->AccountName), i);
  PackGetStrEx(p, "Hostname", e->Hostname, sizeof(e->Hostname), i);
  PackGetStrEx(p, "ConnectedHubName", e->HubName, sizeof(e->HubName), i);
  e->Online = PackGetBoolEx(p, "Online", i);
  e->ConnectedTime = PackGetInt64Ex(p, "ConnectedTime", i);
  e->Connected = PackGetBoolEx(p, "Connected", i);
  e->LastError = PackGetIntEx(p, "LastError", i);
  PackGetStrEx(p, "LinkHubName", e->HubName, sizeof(e->HubName), i);
 }
}
