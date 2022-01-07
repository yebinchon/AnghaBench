
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_12__ {TYPE_1__* Server; } ;
struct TYPE_11__ {int Id; } ;
struct TYPE_10__ {int * IPsecServer; int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ ETHERIP_ID ;
typedef int CEDAR ;
typedef TYPE_3__ ADMIN ;


 int ALog (TYPE_3__*,int *,char*,int ) ;
 int AddEtherIPId (int *,TYPE_2__*) ;
 int ERR_NOT_SUPPORTED ;
 int ERR_NO_ERROR ;
 int GetServerCapsBool (TYPE_1__*,char*) ;
 int IncrementServerConfigRevision (TYPE_1__*) ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int SERVER_ADMIN_ONLY ;

UINT StAddEtherIpId(ADMIN *a, ETHERIP_ID *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 UINT ret = ERR_NO_ERROR;

 SERVER_ADMIN_ONLY;
 NO_SUPPORT_FOR_BRIDGE;
 if (GetServerCapsBool(s, "b_support_ipsec") == 0 || s->IPsecServer == ((void*)0))
 {
  return ERR_NOT_SUPPORTED;
 }

 AddEtherIPId(s->IPsecServer, t);

 ALog(a, ((void*)0), "LA_ADD_ETHERIP_ID", t->Id);

 IncrementServerConfigRevision(s);

 return ERR_NO_ERROR;
}
