
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_11__ {TYPE_1__* Server; } ;
struct TYPE_10__ {scalar_t__ VpnOverIcmpListener; scalar_t__ VpnOverDnsListener; } ;
struct TYPE_9__ {scalar_t__ EnableVpnOverIcmp; scalar_t__ EnableVpnOverDns; int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_SPECIAL_LISTENER ;
typedef int CEDAR ;
typedef TYPE_3__ ADMIN ;


 int ALog (TYPE_3__*,int *,char*) ;
 int ERR_NO_ERROR ;
 int ERR_SPECIAL_LISTENER_DNS_ERROR ;
 int ERR_SPECIAL_LISTENER_ICMP_ERROR ;
 int IncrementServerConfigRevision (TYPE_1__*) ;
 scalar_t__ MAKEBOOL (scalar_t__) ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int SERVER_ADMIN_ONLY ;
 int SiApplySpecialListenerStatus (TYPE_1__*) ;
 int SiCanOpenVpnOverDnsPort () ;
 int SiCanOpenVpnOverIcmpPort () ;

UINT StSetSpecialListener(ADMIN *a, RPC_SPECIAL_LISTENER *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 UINT ret = ERR_NO_ERROR;

 SERVER_ADMIN_ONLY;
 NO_SUPPORT_FOR_BRIDGE;


 if (t->VpnOverDnsListener && (MAKEBOOL(s->EnableVpnOverDns) != MAKEBOOL(t->VpnOverDnsListener)))
 {
  if (SiCanOpenVpnOverDnsPort() == 0)
  {
   return ERR_SPECIAL_LISTENER_DNS_ERROR;
  }
 }

 if (t->VpnOverIcmpListener && (MAKEBOOL(s->EnableVpnOverIcmp) != MAKEBOOL(t->VpnOverIcmpListener)))
 {
  if (SiCanOpenVpnOverIcmpPort() == 0)
  {
   return ERR_SPECIAL_LISTENER_ICMP_ERROR;
  }
 }

 s->EnableVpnOverDns = t->VpnOverDnsListener;
 s->EnableVpnOverIcmp = t->VpnOverIcmpListener;

 SiApplySpecialListenerStatus(s);

 ALog(a, ((void*)0), "LA_SET_SPECIAL_LISTENER");

 IncrementServerConfigRevision(s);

 return ERR_NO_ERROR;
}
