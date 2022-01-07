
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_9__ {TYPE_1__* Server; } ;
struct TYPE_8__ {int VpnOverIcmpListener; int VpnOverDnsListener; } ;
struct TYPE_7__ {int EnableVpnOverIcmp; int EnableVpnOverDns; int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_SPECIAL_LISTENER ;
typedef int CEDAR ;
typedef TYPE_3__ ADMIN ;


 int ERR_NO_ERROR ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int SERVER_ADMIN_ONLY ;
 int Zero (TYPE_2__*,int) ;

UINT StGetSpecialListener(ADMIN *a, RPC_SPECIAL_LISTENER *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 UINT ret = ERR_NO_ERROR;

 SERVER_ADMIN_ONLY;
 NO_SUPPORT_FOR_BRIDGE;

 Zero(t, sizeof(RPC_SPECIAL_LISTENER));
 t->VpnOverDnsListener = s->EnableVpnOverDns;
 t->VpnOverIcmpListener = s->EnableVpnOverIcmp;

 return ERR_NO_ERROR;
}
