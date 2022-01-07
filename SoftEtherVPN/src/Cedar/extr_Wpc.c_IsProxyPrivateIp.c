
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ProxyType; int ProxyHostName; } ;
typedef int IP ;
typedef TYPE_1__ INTERNET_SETTING ;


 int GetIP (int *,int ) ;
 scalar_t__ IsIPMyHost (int *) ;
 scalar_t__ IsIPPrivate (int *) ;
 scalar_t__ IsLocalHostIP (int *) ;
 scalar_t__ PROXY_DIRECT ;

bool IsProxyPrivateIp(INTERNET_SETTING *s)
{
 IP ip;

 if (s == ((void*)0))
 {
  return 0;
 }

 if (s->ProxyType == PROXY_DIRECT)
 {
  return 0;
 }

 if (GetIP(&ip, s->ProxyHostName) == 0)
 {
  return 0;
 }

 if (IsIPPrivate(&ip))
 {
  return 1;
 }

 if (IsIPMyHost(&ip))
 {
  return 1;
 }

 if (IsLocalHostIP(&ip))
 {
  return 1;
 }

 return 0;
}
