
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * Policy; int Traffic; int NumLogin; int AuthType; int AuthData; int ExpireTime; int UpdatedTime; int CreatedTime; int Note; int Realname; int GroupName; int Name; int HubName; } ;
typedef TYPE_1__ RPC_SET_USER ;
typedef int PACK ;


 int OutRpcAuthData (int *,int ,int ) ;
 int OutRpcPolicy (int *,int *) ;
 int OutRpcTraffic (int *,int *) ;
 int PackAddBool (int *,char*,int) ;
 int PackAddInt (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;
 int PackAddTime64 (int *,char*,int ) ;
 int PackAddUniStr (int *,char*,int ) ;

void OutRpcSetUser(PACK *p, RPC_SET_USER *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "HubName", t->HubName);
 PackAddStr(p, "Name", t->Name);
 PackAddStr(p, "GroupName", t->GroupName);
 PackAddUniStr(p, "Realname", t->Realname);
 PackAddUniStr(p, "Note", t->Note);
 PackAddTime64(p, "CreatedTime", t->CreatedTime);
 PackAddTime64(p, "UpdatedTime", t->UpdatedTime);
 PackAddTime64(p, "ExpireTime", t->ExpireTime);
 OutRpcAuthData(p, t->AuthData, t->AuthType);
 PackAddInt(p, "NumLogin", t->NumLogin);
 OutRpcTraffic(p, &t->Traffic);

 if (t->Policy != ((void*)0))
 {
  PackAddBool(p, "UsePolicy", 1);
  OutRpcPolicy(p, t->Policy);
 }
}
