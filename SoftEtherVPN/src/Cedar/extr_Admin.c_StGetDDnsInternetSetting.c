
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_5__ {TYPE_1__* Server; } ;
struct TYPE_4__ {int * DDnsClient; int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef int INTERNET_SETTING ;
typedef int CEDAR ;
typedef TYPE_2__ ADMIN ;


 int DCGetInternetSetting (int *,int *) ;
 int ERR_NOT_SUPPORTED ;
 int ERR_NO_ERROR ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int SERVER_ADMIN_ONLY ;
 int Zero (int *,int) ;

UINT StGetDDnsInternetSetting(ADMIN *a, INTERNET_SETTING *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 UINT ret = ERR_NO_ERROR;

 SERVER_ADMIN_ONLY;
 NO_SUPPORT_FOR_BRIDGE;

 if (s->DDnsClient == ((void*)0))
 {
  return ERR_NOT_SUPPORTED;
 }

 Zero(t, sizeof(INTERNET_SETTING));

 DCGetInternetSetting(s->DDnsClient, t);

 return ret;
}
