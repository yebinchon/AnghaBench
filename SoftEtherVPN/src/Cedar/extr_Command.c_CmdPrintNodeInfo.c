
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef int str ;
struct TYPE_3__ {char* ClientProductName; char* ClientOsName; char* ClientOsVer; char* ClientOsProductId; char* ClientHostname; char* ServerHostname; char* ProxyHostname; int ProxyPort; int ProxyIpAddress6; int ProxyIpAddress; int ServerPort; int ServerIpAddress6; int ServerIpAddress; int ClientPort; int ClientIpAddress6; int ClientIpAddress; int ClientProductBuild; int ClientProductVer; } ;
typedef TYPE_1__ NODE_INFO ;
typedef int CT ;


 int CtInsert (int *,int ,int *) ;
 int Endian32 (int ) ;
 int IPToStr4or6 (char*,int,int ,int ) ;
 int MAX_SIZE ;
 scalar_t__ StrLen (char*) ;
 int StrToUni (int *,int,char*) ;
 int UniFormat (int *,int,char*,int,...) ;
 int UniToStru (int *,int) ;
 int _UU (char*) ;

void CmdPrintNodeInfo(CT *ct, NODE_INFO *info)
{
 wchar_t tmp[MAX_SIZE];
 char str[MAX_SIZE];

 if (ct == ((void*)0) || info == ((void*)0))
 {
  return;
 }

 StrToUni(tmp, sizeof(tmp), info->ClientProductName);
 CtInsert(ct, _UU("SM_NODE_CLIENT_NAME"), tmp);

 UniFormat(tmp, sizeof(tmp), L"%u.%02u", Endian32(info->ClientProductVer) / 100, Endian32(info->ClientProductVer) % 100);
 CtInsert(ct, _UU("SM_NODE_CLIENT_VER"), tmp);

 UniFormat(tmp, sizeof(tmp), L"Build %u", Endian32(info->ClientProductBuild));
 CtInsert(ct, _UU("SM_NODE_CLIENT_BUILD"), tmp);

 StrToUni(tmp, sizeof(tmp), info->ClientOsName);
 CtInsert(ct, _UU("SM_NODE_CLIENT_OS_NAME"), tmp);

 StrToUni(tmp, sizeof(tmp), info->ClientOsVer);
 CtInsert(ct, _UU("SM_NODE_CLIENT_OS_VER"), tmp);

 StrToUni(tmp, sizeof(tmp), info->ClientOsProductId);
 CtInsert(ct, _UU("SM_NODE_CLIENT_OS_PID"), tmp);

 StrToUni(tmp, sizeof(tmp), info->ClientHostname);
 CtInsert(ct, _UU("SM_NODE_CLIENT_HOST"), tmp);

 IPToStr4or6(str, sizeof(str), info->ClientIpAddress, info->ClientIpAddress6);
 StrToUni(tmp, sizeof(tmp), str);
 CtInsert(ct, _UU("SM_NODE_CLIENT_IP"), tmp);

 UniToStru(tmp, Endian32(info->ClientPort));
 CtInsert(ct, _UU("SM_NODE_CLIENT_PORT"), tmp);

 StrToUni(tmp, sizeof(tmp), info->ServerHostname);
 CtInsert(ct, _UU("SM_NODE_SERVER_HOST"), tmp);

 IPToStr4or6(str, sizeof(str), info->ServerIpAddress, info->ServerIpAddress6);
 StrToUni(tmp, sizeof(tmp), str);
 CtInsert(ct, _UU("SM_NODE_SERVER_IP"), tmp);

 UniToStru(tmp, Endian32(info->ServerPort));
 CtInsert(ct, _UU("SM_NODE_SERVER_PORT"), tmp);

 if (StrLen(info->ProxyHostname) != 0)
 {
  StrToUni(tmp, sizeof(tmp), info->ProxyHostname);
  CtInsert(ct, _UU("SM_NODE_PROXY_HOSTNAME"), tmp);

  IPToStr4or6(str, sizeof(str), info->ProxyIpAddress, info->ProxyIpAddress6);
  StrToUni(tmp, sizeof(tmp), str);
  CtInsert(ct, _UU("SM_NODE_PROXY_IP"), tmp);

  UniToStru(tmp, Endian32(info->ProxyPort));
  CtInsert(ct, _UU("SM_NODE_PROXY_PORT"), tmp);
 }
}
