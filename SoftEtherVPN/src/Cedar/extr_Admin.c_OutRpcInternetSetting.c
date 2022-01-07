
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int CustomHttpHeader; int ProxyPassword; int ProxyUsername; int ProxyPort; int ProxyHostName; int ProxyType; } ;
typedef int PACK ;
typedef TYPE_1__ INTERNET_SETTING ;


 int PackAddInt (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;

void OutRpcInternetSetting(PACK *p, INTERNET_SETTING *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddInt(p, "ProxyType", t->ProxyType);
 PackAddStr(p, "ProxyHostName", t->ProxyHostName);
 PackAddInt(p, "ProxyPort", t->ProxyPort);
 PackAddStr(p, "ProxyUsername", t->ProxyUsername);
 PackAddStr(p, "ProxyPassword", t->ProxyPassword);
 PackAddStr(p, "CustomHttpHeader", t->CustomHttpHeader);
}
