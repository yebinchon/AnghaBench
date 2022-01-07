
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int CustomHttpHeader; int ProxyPassword; int ProxyUsername; void* ProxyPort; int ProxyHostName; void* ProxyType; } ;
typedef int PACK ;
typedef TYPE_1__ INTERNET_SETTING ;


 void* PackGetInt (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;

void InRpcInternetSetting(INTERNET_SETTING *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 t->ProxyType = PackGetInt(p, "ProxyType");
 PackGetStr(p, "ProxyHostName", t->ProxyHostName, sizeof(t->ProxyHostName));
 t->ProxyPort = PackGetInt(p, "ProxyPort");
 PackGetStr(p, "ProxyUsername", t->ProxyUsername, sizeof(t->ProxyUsername));
 PackGetStr(p, "ProxyPassword", t->ProxyPassword, sizeof(t->ProxyPassword));
 PackGetStr(p, "CustomHttpHeader", t->CustomHttpHeader, sizeof(t->CustomHttpHeader));
}
