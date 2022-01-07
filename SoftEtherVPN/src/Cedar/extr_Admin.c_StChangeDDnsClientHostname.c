
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_10__ {TYPE_1__* Server; } ;
struct TYPE_9__ {int StrValue; } ;
struct TYPE_8__ {int * DDnsClient; int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_TEST ;
typedef int CEDAR ;
typedef TYPE_3__ ADMIN ;


 int ALog (TYPE_3__*,int *,char*,int ) ;
 scalar_t__ DCChangeHostName (int *,int ) ;
 scalar_t__ ERR_NOT_SUPPORTED ;
 scalar_t__ ERR_NO_ERROR ;
 int IncrementServerConfigRevision (TYPE_1__*) ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int SERVER_ADMIN_ONLY ;

UINT StChangeDDnsClientHostname(ADMIN *a, RPC_TEST *t)
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

 ret = DCChangeHostName(s->DDnsClient, t->StrValue);

 if (ret == ERR_NO_ERROR)
 {
  ALog(a, ((void*)0), "LA_DDNS_HOSTNAME_CHANGED", t->StrValue);
 }

 IncrementServerConfigRevision(s);

 return ret;
}
