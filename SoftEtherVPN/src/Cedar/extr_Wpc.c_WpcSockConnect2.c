
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int t2 ;
typedef int c ;
struct TYPE_6__ {char* HostName; char* ProxyHostName; char* ProxyUsername; char* ProxyPassword; char* CustomHttpHeader; int ProxyPort; int ProxyType; int Port; } ;
typedef TYPE_1__ WPC_CONNECT ;
typedef int UINT ;
typedef int SOCK ;
typedef TYPE_1__ INTERNET_SETTING ;


 int StrCpy (char*,int,char*) ;
 int * WpcSockConnect (TYPE_1__*,int *,int ) ;
 int Zero (TYPE_1__*,int) ;

SOCK *WpcSockConnect2(char *hostname, UINT port, INTERNET_SETTING *t, UINT *error_code, UINT timeout)
{

 INTERNET_SETTING t2;
 WPC_CONNECT c;
 if (t == ((void*)0))
 {
  Zero(&t2, sizeof(t2));

  t = &t2;
 }

 Zero(&c, sizeof(c));
 StrCpy(c.HostName, sizeof(c.HostName), hostname);
 c.Port = port;
 c.ProxyType = t->ProxyType;
 StrCpy(c.ProxyHostName, sizeof(c.HostName), t->ProxyHostName);
 c.ProxyPort = t->ProxyPort;
 StrCpy(c.ProxyUsername, sizeof(c.ProxyUsername), t->ProxyUsername);
 StrCpy(c.ProxyPassword, sizeof(c.ProxyPassword), t->ProxyPassword);
 StrCpy(c.CustomHttpHeader, sizeof(c.CustomHttpHeader), t->CustomHttpHeader);

 return WpcSockConnect(&c, error_code, timeout);
}
