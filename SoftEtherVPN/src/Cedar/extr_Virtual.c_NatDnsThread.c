
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_4__ {int DnsOk; int DnsGetIpFromHost; int DnsFinished; TYPE_1__* v; int DnsResponseHostName; int DnsTargetHostName; int DnsResponseIp; } ;
struct TYPE_3__ {int SockEvent; } ;
typedef int THREAD ;
typedef TYPE_2__ NAT_ENTRY ;
typedef int IP ;


 scalar_t__ ArpaToIP (int *,int ) ;
 int Copy (int *,int *,int) ;
 int CopyStr (char*) ;
 int EndWith (int ,char*) ;
 scalar_t__ GetHostName (char*,int,int *) ;
 scalar_t__ NatGetIP (int *,int ) ;
 int NoticeThreadInit (int *) ;
 int SetSockEvent (int ) ;

void NatDnsThread(THREAD *t, void *param)
{
 NAT_ENTRY *n;
 IP ip;

 if (t == ((void*)0) || param == ((void*)0))
 {
  return;
 }
 n = (NAT_ENTRY *)param;


 NoticeThreadInit(t);


 if (EndWith(n->DnsTargetHostName, ".in-addr.arpa") == 0)
 {

  if (NatGetIP(&ip, n->DnsTargetHostName))
  {

   Copy(&n->DnsResponseIp, &ip, sizeof(IP));
   n->DnsOk = 1;
  }
 }
 else
 {

  IP ip;
  n->DnsGetIpFromHost = 1;

  if (ArpaToIP(&ip, n->DnsTargetHostName))
  {

   char tmp[256];
   if (GetHostName(tmp, sizeof(tmp), &ip))
   {

    n->DnsResponseHostName = CopyStr(tmp);
    n->DnsOk = 1;
   }
  }
 }


 n->DnsFinished = 1;

 SetSockEvent(n->v->SockEvent);
}
