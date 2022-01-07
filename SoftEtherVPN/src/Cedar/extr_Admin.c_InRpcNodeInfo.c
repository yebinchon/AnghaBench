
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* ProxyPort; int ProxyIpAddress6; void* ProxyIpAddress; void* ServerPort; int ServerIpAddress6; void* ServerIpAddress; void* ClientPort; int ClientIpAddress6; void* ClientIpAddress; void* ServerProductBuild; void* ServerProductVer; void* ClientProductBuild; void* ClientProductVer; int UniqueId; int HubName; int ProxyHostname; int ServerHostname; int ClientHostname; int ClientOsProductId; int ClientOsVer; int ClientOsName; int ServerProductName; int ClientProductName; } ;
typedef int PACK ;
typedef TYPE_1__ NODE_INFO ;


 int PackGetData2 (int *,char*,int ,int) ;
 void* PackGetInt (int *,char*) ;
 void* PackGetIp32 (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcNodeInfo(NODE_INFO *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(NODE_INFO));
 PackGetStr(p, "ClientProductName", t->ClientProductName, sizeof(t->ClientProductName));
 PackGetStr(p, "ServerProductName", t->ServerProductName, sizeof(t->ServerProductName));
 PackGetStr(p, "ClientOsName", t->ClientOsName, sizeof(t->ClientOsName));
 PackGetStr(p, "ClientOsVer", t->ClientOsVer, sizeof(t->ClientOsVer));
 PackGetStr(p, "ClientOsProductId", t->ClientOsProductId, sizeof(t->ClientOsProductId));
 PackGetStr(p, "ClientHostname", t->ClientHostname, sizeof(t->ClientHostname));
 PackGetStr(p, "ServerHostname", t->ServerHostname, sizeof(t->ServerHostname));
 PackGetStr(p, "ProxyHostname", t->ProxyHostname, sizeof(t->ProxyHostname));
 PackGetStr(p, "HubName", t->HubName, sizeof(t->HubName));
 PackGetData2(p, "UniqueId", t->UniqueId, sizeof(t->UniqueId));

 t->ClientProductVer = PackGetInt(p, "ClientProductVer");
 t->ClientProductBuild = PackGetInt(p, "ClientProductBuild");
 t->ServerProductVer = PackGetInt(p, "ServerProductVer");
 t->ServerProductBuild = PackGetInt(p, "ServerProductBuild");
 t->ClientIpAddress = PackGetIp32(p, "ClientIpAddress");
 PackGetData2(p, "ClientIpAddress6", t->ClientIpAddress6, sizeof(t->ClientIpAddress6));
 t->ClientPort = PackGetInt(p, "ClientPort");
 t->ServerIpAddress = PackGetIp32(p, "ServerIpAddress");
 PackGetData2(p, "ServerIpAddress6", t->ServerIpAddress6, sizeof(t->ServerIpAddress6));
 t->ServerPort = PackGetInt(p, "ServerPort2");
 t->ProxyIpAddress = PackGetIp32(p, "ProxyIpAddress");
 PackGetData2(p, "ProxyIpAddress6", t->ProxyIpAddress6, sizeof(t->ProxyIpAddress6));
 t->ProxyPort = PackGetInt(p, "ProxyPort");
}
