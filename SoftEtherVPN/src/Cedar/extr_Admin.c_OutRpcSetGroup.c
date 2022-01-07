
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * Policy; int Traffic; int Note; int Realname; int Name; int HubName; } ;
typedef TYPE_1__ RPC_SET_GROUP ;
typedef int PACK ;


 int OutRpcPolicy (int *,int *) ;
 int OutRpcTraffic (int *,int *) ;
 int PackAddBool (int *,char*,int) ;
 int PackAddStr (int *,char*,int ) ;
 int PackAddUniStr (int *,char*,int ) ;

void OutRpcSetGroup(PACK *p, RPC_SET_GROUP *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "HubName", t->HubName);
 PackAddStr(p, "Name", t->Name);
 PackAddUniStr(p, "Realname", t->Realname);
 PackAddUniStr(p, "Note", t->Note);
 OutRpcTraffic(p, &t->Traffic);

 if (t->Policy != ((void*)0))
 {
  PackAddBool(p, "UsePolicy", 1);
  OutRpcPolicy(p, t->Policy);
 }
}
