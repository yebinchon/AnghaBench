
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_6__ {TYPE_1__* Server; } ;
struct TYPE_5__ {int * DDnsClient; int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef int INTERNET_SETTING ;
typedef int CEDAR ;
typedef TYPE_2__ ADMIN ;


 int DCSetInternetSetting (int *,int *) ;
 int ERR_NOT_SUPPORTED ;
 int ERR_NO_ERROR ;
 int IncrementServerConfigRevision (TYPE_1__*) ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int SERVER_ADMIN_ONLY ;

UINT StSetDDnsInternetSetting(ADMIN *a, INTERNET_SETTING *t)
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

 DCSetInternetSetting(s->DDnsClient, t);

 IncrementServerConfigRevision(s);

 return ret;
}
