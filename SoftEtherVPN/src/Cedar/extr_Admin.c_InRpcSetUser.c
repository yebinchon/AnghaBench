
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Policy; int Traffic; int NumLogin; int Name; int AuthType; int AuthData; void* ExpireTime; void* UpdatedTime; void* CreatedTime; int Note; int Realname; int GroupName; int HubName; } ;
typedef TYPE_1__ RPC_SET_USER ;
typedef int POLICY ;
typedef int PACK ;


 int InRpcAuthData (int *,int *,int ) ;
 int InRpcPolicy (int ,int *) ;
 int InRpcTraffic (int *,int *) ;
 scalar_t__ PackGetBool (int *,char*) ;
 int PackGetInt (int *,char*) ;
 void* PackGetInt64 (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int PackGetUniStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;
 int ZeroMalloc (int) ;

void InRpcSetUser(RPC_SET_USER *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_SET_USER));
 PackGetStr(p, "HubName", t->HubName, sizeof(t->HubName));
 PackGetStr(p, "Name", t->Name, sizeof(t->Name));
 PackGetStr(p, "GroupName", t->GroupName, sizeof(t->GroupName));
 PackGetUniStr(p, "Realname", t->Realname, sizeof(t->Realname));
 PackGetUniStr(p, "Note", t->Note, sizeof(t->Note));
 t->CreatedTime = PackGetInt64(p, "CreatedTime");
 t->UpdatedTime = PackGetInt64(p, "UpdatedTime");
 t->ExpireTime = PackGetInt64(p, "ExpireTime");
 t->AuthData = InRpcAuthData(p, &t->AuthType, t->Name);
 t->NumLogin = PackGetInt(p, "NumLogin");
 InRpcTraffic(&t->Traffic, p);

 if (PackGetBool(p, "UsePolicy"))
 {
  t->Policy = ZeroMalloc(sizeof(POLICY));
  InRpcPolicy(t->Policy, p);
 }
}
