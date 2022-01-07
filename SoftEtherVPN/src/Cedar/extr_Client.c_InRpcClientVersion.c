
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ClientId; void* ShowVgcLink; void* IsVgcSupported; void* IsVLanNameRegulated; void* OsType; void* ProcessId; void* ClientBuildInt; void* ClientVerInt; int ClientBuildInfoString; int ClientVersionString; int ClientProductName; } ;
typedef TYPE_1__ RPC_CLIENT_VERSION ;
typedef int PACK ;


 void* PackGetBool (int *,char*) ;
 void* PackGetInt (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcClientVersion(RPC_CLIENT_VERSION *ver, PACK *p)
{

 if (ver == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(ver, sizeof(RPC_CLIENT_VERSION));
 PackGetStr(p, "ClientProductName", ver->ClientProductName, sizeof(ver->ClientProductName));
 PackGetStr(p, "ClientVersionString", ver->ClientVersionString, sizeof(ver->ClientVersionString));
 PackGetStr(p, "ClientBuildInfoString", ver->ClientBuildInfoString, sizeof(ver->ClientBuildInfoString));
 ver->ClientVerInt = PackGetInt(p, "ClientVerInt");
 ver->ClientBuildInt = PackGetInt(p, "ClientBuildInt");
 ver->ProcessId = PackGetInt(p, "ProcessId");
 ver->OsType = PackGetInt(p, "OsType");
 ver->IsVLanNameRegulated = PackGetBool(p, "IsVLanNameRegulated");
 ver->IsVgcSupported = PackGetBool(p, "IsVgcSupported");
 ver->ShowVgcLink = PackGetBool(p, "ShowVgcLink");
 PackGetStr(p, "ClientId", ver->ClientId, sizeof(ver->ClientId));
}
