
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
typedef int unique_id ;
typedef int server_ip ;
typedef int proxy_ip ;
typedef int client_ip ;
typedef int UINT ;
struct TYPE_3__ {int HubName; int ProxyPort; int ProxyHostname; int ServerPort; int ServerHostname; int ClientPort; int ClientHostname; int ClientOsProductId; int ClientOsVer; int ClientOsName; int ServerProductBuild; int ServerProductVer; int ServerProductName; int ClientProductBuild; int ClientProductVer; int ClientProductName; int UniqueId; int ProxyIpAddress6; int ProxyIpAddress; int ServerIpAddress6; int ServerIpAddress; int ClientIpAddress6; int ClientIpAddress; } ;
typedef TYPE_1__ NODE_INFO ;


 int BinToStr (char*,int,int ,int) ;
 int Endian32 (int ) ;
 int IPToStr4or6 (char*,int,int ,int ) ;
 int UniFormat (int *,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,char*,int ,int ,char*,int ,int ,char*,int ,int ,char*) ;
 int _UU (char*) ;

void NodeInfoToStr(wchar_t *str, UINT size, NODE_INFO *info)
{
 char client_ip[128], server_ip[128], proxy_ip[128], unique_id[128];

 if (str == ((void*)0) || info == ((void*)0))
 {
  return;
 }

 IPToStr4or6(client_ip, sizeof(client_ip), info->ClientIpAddress, info->ClientIpAddress6);
 IPToStr4or6(server_ip, sizeof(server_ip), info->ServerIpAddress, info->ServerIpAddress6);
 IPToStr4or6(proxy_ip, sizeof(proxy_ip), info->ProxyIpAddress, info->ProxyIpAddress6);
 BinToStr(unique_id, sizeof(unique_id), info->UniqueId, sizeof(info->UniqueId));

 UniFormat(str, size, _UU("LS_NODE_INFO_TAG"), info->ClientProductName,
  Endian32(info->ClientProductVer), Endian32(info->ClientProductBuild),
  info->ServerProductName, Endian32(info->ServerProductVer), Endian32(info->ServerProductBuild),
  info->ClientOsName, info->ClientOsVer, info->ClientOsProductId,
  info->ClientHostname, client_ip, Endian32(info->ClientPort),
  info->ServerHostname, server_ip, Endian32(info->ServerPort),
  info->ProxyHostname, proxy_ip, Endian32(info->ProxyPort),
  info->HubName, unique_id);
}
