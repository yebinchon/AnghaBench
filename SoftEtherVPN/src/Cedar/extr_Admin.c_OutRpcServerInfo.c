
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int OsInfo; int ServerFamilyName; int ServerBuildDate; int ServerType; int ServerHostName; int ServerBuildInt; int ServerVerInt; int ServerBuildInfoString; int ServerVersionString; int ServerProductName; } ;
typedef TYPE_1__ RPC_SERVER_INFO ;
typedef int PACK ;


 int OutRpcOsInfo (int *,int *) ;
 int PackAddInt (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;
 int PackAddTime64 (int *,char*,int ) ;

void OutRpcServerInfo(PACK *p, RPC_SERVER_INFO *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "ServerProductName", t->ServerProductName);
 PackAddStr(p, "ServerVersionString", t->ServerVersionString);
 PackAddStr(p, "ServerBuildInfoString", t->ServerBuildInfoString);
 PackAddInt(p, "ServerVerInt", t->ServerVerInt);
 PackAddInt(p, "ServerBuildInt", t->ServerBuildInt);
 PackAddStr(p, "ServerHostName", t->ServerHostName);
 PackAddInt(p, "ServerType", t->ServerType);
 PackAddTime64(p, "ServerBuildDate", t->ServerBuildDate);
 PackAddStr(p, "ServerFamilyName", t->ServerFamilyName);
 OutRpcOsInfo(p, &t->OsInfo);
}
