
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int tmp ;
typedef int hostname ;
typedef int UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_10__ {int NatT_Halt; int NatT_IP_Changed; int NatT_HaltEvent; int NatT_Lock; int NatT_IP; } ;
typedef TYPE_1__ UDP_ACCEL ;
struct TYPE_11__ {int member_0; } ;
typedef int THREAD ;
typedef TYPE_2__ IP ;


 int Copy (int *,TYPE_2__*,int) ;
 int Debug (char*,char*,char*) ;
 int GetIP4Ex (TYPE_2__*,char*,int ,int*) ;
 int IPToStr (char*,int,TYPE_2__*) ;
 scalar_t__ IsZeroIP (TYPE_2__*) ;
 int IsZeroIp (TYPE_2__*) ;
 int Lock (int ) ;
 int MAX_SIZE ;
 scalar_t__ MIN (int,int) ;
 int RUDPGetRegisterHostNameByIP (char*,int,TYPE_2__*) ;
 int Rand8 () ;
 int SetIP (TYPE_2__*,int,int ,int ,int ) ;
 scalar_t__ UDP_NAT_T_GET_IP_INTERVAL ;
 scalar_t__ UDP_NAT_T_GET_IP_INTERVAL_MAX ;
 int Unlock (int ) ;
 int Wait (int ,scalar_t__) ;

void NatT_GetIpThread(THREAD *thread, void *param)
{
 UDP_ACCEL *a;
 char hostname[MAX_SIZE];
 static IP dummy_ip = {0};
 UINT num_retry = 0;

 if (thread == ((void*)0) || param == ((void*)0))
 {
  return;
 }

 a = (UDP_ACCEL *)param;

 if (IsZeroIP(&dummy_ip))
 {
  SetIP(&dummy_ip, 11, Rand8(), Rand8(), Rand8());
 }

 RUDPGetRegisterHostNameByIP(hostname, sizeof(hostname), &dummy_ip);

 while (a->NatT_Halt == 0)
 {
  IP ip;
  UINT wait_time = UDP_NAT_T_GET_IP_INTERVAL;


  bool ret = GetIP4Ex(&ip, hostname, 0, &a->NatT_Halt);

  if (ret && (IsZeroIp(&ip) == 0))
  {
   char tmp[128];


   Lock(a->NatT_Lock);
   {
    Copy(&a->NatT_IP, &ip, sizeof(IP));
   }
   Unlock(a->NatT_Lock);

   IPToStr(tmp, sizeof(tmp), &ip);
   Debug("NAT-T IP Address Resolved: %s = %s\n", hostname, tmp);

   a->NatT_IP_Changed = 1;

   break;
  }


  num_retry++;

  wait_time = (UINT)(MIN((UINT64)UDP_NAT_T_GET_IP_INTERVAL * (UINT64)num_retry, (UINT64)UDP_NAT_T_GET_IP_INTERVAL_MAX));

  Wait(a->NatT_HaltEvent, wait_time);
 }
}
