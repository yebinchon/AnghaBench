
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_9__ {int SecureNAT_MaxTcpSessionsPerIp; int SecureNAT_MaxUdpSessionsPerIp; int SecureNAT_MaxIcmpSessionsPerIp; } ;
struct TYPE_8__ {TYPE_1__* v; } ;
struct TYPE_7__ {TYPE_3__* HubOption; } ;
typedef TYPE_2__ NATIVE_NAT ;
typedef TYPE_3__ HUB_OPTION ;





 int NnDeleteOldestNatSession (TYPE_2__*,int,int) ;
 int NnGetNumNatEntriesPerIp (TYPE_2__*,int,int) ;

void NnDeleteOldestNatSessionIfNecessary(NATIVE_NAT *t, UINT ip, UINT protocol)
{
 UINT current_num;
 UINT max_sessions = 0;

 if (t == ((void*)0))
 {
  return;
 }

 if (t->v->HubOption != ((void*)0))
 {
  HUB_OPTION *o = t->v->HubOption;

  switch (protocol)
  {
  case 129:
   max_sessions = o->SecureNAT_MaxTcpSessionsPerIp;
   break;

  case 128:
   max_sessions = o->SecureNAT_MaxUdpSessionsPerIp;
   break;

  case 130:
   max_sessions = o->SecureNAT_MaxIcmpSessionsPerIp;
   break;
  }
 }

 if (max_sessions == 0)
 {
  return;
 }

 current_num = NnGetNumNatEntriesPerIp(t, ip, protocol);

 if (current_num >= max_sessions)
 {
  NnDeleteOldestNatSession(t, ip, protocol);
 }
}
