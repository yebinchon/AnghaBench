
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int name ;
typedef scalar_t__ UINT ;
struct TYPE_4__ {scalar_t__ ProxyPort; int ProxyHostName; void* ProxyType; } ;
typedef TYPE_1__ INTERNET_SETTING ;


 int Free (char*) ;
 scalar_t__ GetProxyServerNameAndPortFromIeProxyRegStr (char*,int,scalar_t__*,char*,char*) ;
 scalar_t__ INFINITE ;
 int MAX_HOST_NAME_LEN ;
 int MsRegReadInt (int ,char*,char*) ;
 char* MsRegReadStr (int ,char*,char*) ;
 void* PROXY_HTTP ;
 void* PROXY_SOCKS ;
 scalar_t__ ParseHostPort (char*,char**,scalar_t__*,int ) ;
 int REG_CURRENT_USER ;
 scalar_t__ SearchStrEx (char*,char*,int ,int) ;
 int StrCpy (int ,int,char*) ;
 int Zero (TYPE_1__*,int) ;

void GetSystemInternetSetting(INTERNET_SETTING *setting)
{
 Zero(setting, sizeof(INTERNET_SETTING));

}
