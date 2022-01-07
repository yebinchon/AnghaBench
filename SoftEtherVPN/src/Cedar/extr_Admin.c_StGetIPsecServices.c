
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_6__ {TYPE_1__* Server; } ;
struct TYPE_5__ {int * IPsecServer; int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef int IPSEC_SERVICES ;
typedef int CEDAR ;
typedef TYPE_2__ ADMIN ;


 int ERR_NOT_SUPPORTED ;
 int ERR_NO_ERROR ;
 int GetServerCapsBool (TYPE_1__*,char*) ;
 int IPsecServerGetServices (int *,int *) ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int SERVER_ADMIN_ONLY ;
 int Zero (int *,int) ;

UINT StGetIPsecServices(ADMIN *a, IPSEC_SERVICES *t)
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

 Zero(t, sizeof(IPSEC_SERVICES));
 IPsecServerGetServices(s->IPsecServer, t);

 return ERR_NO_ERROR;
}
