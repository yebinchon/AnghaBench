
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int current_hostname ;
typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_2__ {int Halt; int HaltEvent; int My_Private_IP; int Lock; int SockEvent; int NatT_TranId; scalar_t__ NatT_RegisterFailNum; scalar_t__ NatT_GetTokenFailNum; scalar_t__ NatT_RegisterNextTick; scalar_t__ NatT_GetTokenNextTick; int NatT_IP; int CurrentRegisterHostname; } ;
typedef int THREAD ;
typedef TYPE_1__ RUDP_STACK ;
typedef int IP ;


 scalar_t__ CmpIpAddr (int *,int *) ;
 int Copy (int *,int *,int) ;
 int Debug (char*,char*,...) ;
 int FreeRouteChange (void*) ;
 scalar_t__ GenRandInterval (int ,int ) ;
 scalar_t__ GetHostIPAddressHash32 () ;
 scalar_t__ GetIP4 (int *,char*) ;
 scalar_t__ GetMyPrivateIP (int *,int) ;
 scalar_t__ IsRouteChanged (void*) ;
 int IsZeroIp (int *) ;
 int Lock (int ) ;
 int MAX_SIZE ;
 scalar_t__ MIN (scalar_t__,scalar_t__) ;
 void* NewRouteChange () ;
 int RUDP_LOOP_WAIT_INTERVAL_S ;
 int Rand64 () ;
 int SetSockEvent (int ) ;
 scalar_t__ StrCmpi (char*,int ) ;
 int StrCpy (char*,int,int ) ;
 scalar_t__ Tick64 () ;
 scalar_t__ UDP_NAT_T_GET_IP_INTERVAL ;
 scalar_t__ UDP_NAT_T_GET_IP_INTERVAL_AFTER ;
 scalar_t__ UDP_NAT_T_GET_IP_INTERVAL_MAX ;
 scalar_t__ UDP_NAT_T_GET_PRIVATE_IP_INTERVAL ;
 int UDP_NAT_T_GET_PRIVATE_IP_INTERVAL_AFTER_MAX ;
 int UDP_NAT_T_GET_PRIVATE_IP_INTERVAL_AFTER_MIN ;
 int Unlock (int ) ;
 int Wait (int ,int ) ;
 int Zero (char*,int) ;

void RUDPIpQueryThread(THREAD *thread, void *param)
{
 RUDP_STACK *r;
 UINT64 next_getip_tick = 0;
 UINT64 next_getprivate_ip_tick = 0;
 UINT last_ip_hash = 0;
 void *route_change_poller = ((void*)0);
 char current_hostname[MAX_SIZE];
 bool last_time_ip_changed = 0;
 UINT num_retry = 0;

 if (thread == ((void*)0) || param == ((void*)0))
 {
  return;
 }

 r = (RUDP_STACK *)param;

 last_ip_hash = GetHostIPAddressHash32();

 route_change_poller = NewRouteChange();
 IsRouteChanged(route_change_poller);

 Zero(current_hostname, sizeof(current_hostname));

 while (r->Halt == 0)
 {
  UINT ip_hash = GetHostIPAddressHash32();
  UINT64 now = Tick64();
  bool ip_changed = 0;

  if (ip_hash != last_ip_hash)
  {
   last_time_ip_changed = 0;
  }

  if ((ip_hash != last_ip_hash) || (IsRouteChanged(route_change_poller)))
  {
   if (last_time_ip_changed == 0)
   {


    next_getip_tick = 0;
    next_getprivate_ip_tick = 0;
    ip_changed = 1;

    last_ip_hash = ip_hash;

    last_time_ip_changed = 1;
   }
  }
  else
  {
   last_time_ip_changed = 0;
  }

  Lock(r->Lock);
  {
   if (StrCmpi(current_hostname, r->CurrentRegisterHostname) != 0)
   {

    next_getip_tick = 0;
    StrCpy(current_hostname, sizeof(current_hostname), r->CurrentRegisterHostname);
   }
  }
  Unlock(r->Lock);


  if (next_getip_tick == 0 || now >= next_getip_tick)
  {
   IP ip;

   if (GetIP4(&ip, current_hostname) && IsZeroIp(&ip) == 0)
   {
    Lock(r->Lock);
    {

     if (CmpIpAddr(&r->NatT_IP, &ip) != 0)
     {

      ip_changed = 1;
      Copy(&r->NatT_IP, &ip, sizeof(IP));
     }
    }
    Unlock(r->Lock);
   }

   if (IsZeroIp(&r->NatT_IP))
   {
    num_retry++;

    next_getip_tick = now + MIN((UINT64)UDP_NAT_T_GET_IP_INTERVAL * (UINT64)num_retry, (UINT64)UDP_NAT_T_GET_IP_INTERVAL_MAX);
   }
   else
   {
    next_getip_tick = now + (UINT64)UDP_NAT_T_GET_IP_INTERVAL_AFTER;
   }

   if (ip_changed)
   {
    Debug("NAT-T: NAT-T Server IP (%s): %r\n", current_hostname, &r->NatT_IP);

    r->NatT_GetTokenNextTick = 0;
    r->NatT_RegisterNextTick = 0;
    r->NatT_GetTokenFailNum = 0;
    r->NatT_RegisterFailNum = 0;

    r->NatT_TranId = Rand64();

    SetSockEvent(r->SockEvent);
   }
  }


  if (next_getprivate_ip_tick == 0 || now >= next_getprivate_ip_tick)
  {
   IP ip;

   if (GetMyPrivateIP(&ip, 0))
   {
    Lock(r->Lock);
    {
     Copy(&r->My_Private_IP, &ip, sizeof(IP));
    }
    Unlock(r->Lock);
   }

   if (IsZeroIp(&r->My_Private_IP))
   {
    next_getprivate_ip_tick = now + (UINT64)UDP_NAT_T_GET_PRIVATE_IP_INTERVAL;
   }
   else
   {
    next_getprivate_ip_tick = now + (UINT64)GenRandInterval(UDP_NAT_T_GET_PRIVATE_IP_INTERVAL_AFTER_MIN, UDP_NAT_T_GET_PRIVATE_IP_INTERVAL_AFTER_MAX);
   }

   Debug("NAT-T: My Private IP: %r\n", &r->My_Private_IP);
  }

  if (r->Halt)
  {
   break;
  }

  Wait(r->HaltEvent, RUDP_LOOP_WAIT_INTERVAL_S);
 }

 FreeRouteChange(route_change_poller);
}
