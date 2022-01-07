
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ClientId; int ShowVgcLink; int IsVgcSupported; int IsVLanNameRegulated; int OsType; int ProcessId; int ClientBuildInt; int ClientVerInt; int ClientBuildInfoString; int ClientVersionString; int ClientProductName; } ;
typedef TYPE_1__ RPC_CLIENT_VERSION ;
typedef int PACK ;


 int PackAddBool (int *,char*,int ) ;
 int PackAddInt (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;

void OutRpcClientVersion(PACK *p, RPC_CLIENT_VERSION *ver)
{

 if (ver == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "ClientProductName", ver->ClientProductName);
 PackAddStr(p, "ClientVersionString", ver->ClientVersionString);
 PackAddStr(p, "ClientBuildInfoString", ver->ClientBuildInfoString);
 PackAddInt(p, "ClientVerInt", ver->ClientVerInt);
 PackAddInt(p, "ClientBuildInt", ver->ClientBuildInt);
 PackAddInt(p, "ProcessId", ver->ProcessId);
 PackAddInt(p, "OsType", ver->OsType);
 PackAddBool(p, "IsVLanNameRegulated", ver->IsVLanNameRegulated);
 PackAddBool(p, "IsVgcSupported", ver->IsVgcSupported);
 PackAddBool(p, "ShowVgcLink", ver->ShowVgcLink);
 PackAddStr(p, "ClientId", ver->ClientId);
}
