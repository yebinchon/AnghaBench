
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Policy; int Traffic; int Note; int Realname; int Name; int HubName; } ;
typedef TYPE_1__ RPC_SET_GROUP ;
typedef int POLICY ;
typedef int PACK ;


 int InRpcPolicy (int ,int *) ;
 int InRpcTraffic (int *,int *) ;
 scalar_t__ PackGetBool (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int PackGetUniStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;
 int ZeroMalloc (int) ;

void InRpcSetGroup(RPC_SET_GROUP *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_SET_GROUP));
 PackGetStr(p, "HubName", t->HubName, sizeof(t->HubName));
 PackGetStr(p, "Name", t->Name, sizeof(t->Name));
 PackGetUniStr(p, "Realname", t->Realname, sizeof(t->Realname));
 PackGetUniStr(p, "Note", t->Note, sizeof(t->Note));
 InRpcTraffic(&t->Traffic, p);

 if (PackGetBool(p, "UsePolicy"))
 {
  t->Policy = ZeroMalloc(sizeof(POLICY));
  InRpcPolicy(t->Policy, p);
 }
}
