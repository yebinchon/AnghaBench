
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ProxyPort; int ProxyIpAddress6; int ProxyIpAddress; int ServerPort; int ServerIpAddress6; int ServerIpAddress; int ClientPort; int ClientIpAddress6; int ClientIpAddress; int ServerProductBuild; int ServerProductVer; int ClientProductBuild; int ClientProductVer; int UniqueId; int HubName; int ProxyHostname; int ServerHostname; int ClientHostname; int ClientOsProductId; int ClientOsVer; int ClientOsName; int ServerProductName; int ClientProductName; } ;
typedef int PACK ;
typedef TYPE_1__ NODE_INFO ;


 int PackAddData (int *,char*,int ,int) ;
 int PackAddInt (int *,char*,int ) ;
 int PackAddIp32 (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;

void OutRpcNodeInfo(PACK *p, NODE_INFO *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "ClientProductName", t->ClientProductName);
 PackAddStr(p, "ServerProductName", t->ServerProductName);
 PackAddStr(p, "ClientOsName", t->ClientOsName);
 PackAddStr(p, "ClientOsVer", t->ClientOsVer);
 PackAddStr(p, "ClientOsProductId", t->ClientOsProductId);
 PackAddStr(p, "ClientHostname", t->ClientHostname);
 PackAddStr(p, "ServerHostname", t->ServerHostname);
 PackAddStr(p, "ProxyHostname", t->ProxyHostname);
 PackAddStr(p, "HubName", t->HubName);
 PackAddData(p, "UniqueId", t->UniqueId, sizeof(t->UniqueId));

 PackAddInt(p, "ClientProductVer", t->ClientProductVer);
 PackAddInt(p, "ClientProductBuild", t->ClientProductBuild);
 PackAddInt(p, "ServerProductVer", t->ServerProductVer);
 PackAddInt(p, "ServerProductBuild", t->ServerProductBuild);
 PackAddIp32(p, "ClientIpAddress", t->ClientIpAddress);
 PackAddData(p, "ClientIpAddress6", t->ClientIpAddress6, sizeof(t->ClientIpAddress6));
 PackAddInt(p, "ClientPort", t->ClientPort);
 PackAddIp32(p, "ServerIpAddress", t->ServerIpAddress);
 PackAddData(p, "ServerIpAddress6", t->ServerIpAddress6, sizeof(t->ServerIpAddress6));
 PackAddInt(p, "ServerPort2", t->ServerPort);
 PackAddIp32(p, "ProxyIpAddress", t->ProxyIpAddress);
 PackAddData(p, "ProxyIpAddress6", t->ProxyIpAddress6, sizeof(t->ProxyIpAddress6));
 PackAddInt(p, "ProxyPort", t->ProxyPort);
}
