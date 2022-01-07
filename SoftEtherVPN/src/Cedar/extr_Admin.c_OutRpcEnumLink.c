
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_5__ {size_t NumLink; TYPE_1__* Links; int HubName; } ;
struct TYPE_4__ {int HubName; int LastError; int Connected; int ConnectedTime; int Online; int Hostname; int AccountName; } ;
typedef TYPE_1__ RPC_ENUM_LINK_ITEM ;
typedef TYPE_2__ RPC_ENUM_LINK ;
typedef int PACK ;


 int PackAddBoolEx (int *,char*,int ,size_t,size_t) ;
 int PackAddIntEx (int *,char*,int ,size_t,size_t) ;
 int PackAddStr (int *,char*,int ) ;
 int PackAddStrEx (int *,char*,int ,size_t,size_t) ;
 int PackAddTime64Ex (int *,char*,int ,size_t,size_t) ;
 int PackAddUniStrEx (int *,char*,int ,size_t,size_t) ;
 int PackSetCurrentJsonGroupName (int *,char*) ;

void OutRpcEnumLink(PACK *p, RPC_ENUM_LINK *t)
{
 UINT i;

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "HubName", t->HubName);

 PackSetCurrentJsonGroupName(p, "LinkList");
 for (i = 0;i < t->NumLink;i++)
 {
  RPC_ENUM_LINK_ITEM *e = &t->Links[i];

  PackAddUniStrEx(p, "AccountName", e->AccountName, i, t->NumLink);
  PackAddStrEx(p, "ConnectedHubName", e->HubName, i, t->NumLink);
  PackAddStrEx(p, "Hostname", e->Hostname, i, t->NumLink);
  PackAddBoolEx(p, "Online", e->Online, i, t->NumLink);
  PackAddTime64Ex(p, "ConnectedTime", e->ConnectedTime, i, t->NumLink);
  PackAddBoolEx(p, "Connected", e->Connected, i, t->NumLink);
  PackAddIntEx(p, "LastError", e->LastError, i, t->NumLink);
  PackAddStrEx(p, "TargetHubName", e->HubName, i, t->NumLink);
 }
 PackSetCurrentJsonGroupName(p, ((void*)0));
}
