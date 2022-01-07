
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int OsInfo; int ServerFamilyName; int ServerBuildDate; void* ServerType; int ServerHostName; void* ServerBuildInt; void* ServerVerInt; int ServerBuildInfoString; int ServerVersionString; int ServerProductName; } ;
typedef TYPE_1__ RPC_SERVER_INFO ;
typedef int PACK ;


 int InRpcOsInfo (int *,int *) ;
 void* PackGetInt (int *,char*) ;
 int PackGetInt64 (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcServerInfo(RPC_SERVER_INFO *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_SERVER_INFO));

 PackGetStr(p, "ServerProductName", t->ServerProductName, sizeof(t->ServerProductName));
 PackGetStr(p, "ServerVersionString", t->ServerVersionString, sizeof(t->ServerVersionString));
 PackGetStr(p, "ServerBuildInfoString", t->ServerBuildInfoString, sizeof(t->ServerBuildInfoString));
 t->ServerVerInt = PackGetInt(p, "ServerVerInt");
 t->ServerBuildInt = PackGetInt(p, "ServerBuildInt");
 PackGetStr(p, "ServerHostName", t->ServerHostName, sizeof(t->ServerHostName));
 t->ServerType = PackGetInt(p, "ServerType");
 t->ServerBuildDate = PackGetInt64(p, "ServerBuildDate");
 PackGetStr(p, "ServerFamilyName", t->ServerFamilyName, sizeof(t->ServerFamilyName));
 InRpcOsInfo(&t->OsInfo, p);
}
