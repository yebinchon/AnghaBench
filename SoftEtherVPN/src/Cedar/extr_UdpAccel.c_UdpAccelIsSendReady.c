
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
struct TYPE_3__ {int Inited; scalar_t__ YourPort; scalar_t__ LastRecvTick; scalar_t__ Now; scalar_t__ FirstStableReceiveTick; scalar_t__ FastDetect; int YourIp; } ;
typedef TYPE_1__ UDP_ACCEL ;


 scalar_t__ IsZeroIp (int *) ;
 scalar_t__ UDP_ACCELERATION_KEEPALIVE_TIMEOUT ;
 scalar_t__ UDP_ACCELERATION_KEEPALIVE_TIMEOUT_FAST ;
 scalar_t__ UDP_ACCELERATION_REQUIRE_CONTINUOUS ;

bool UdpAccelIsSendReady(UDP_ACCEL *a, bool check_keepalive)
{
 UINT64 timeout_value;

 if (a == ((void*)0))
 {
  return 0;
 }

 if (a->Inited == 0)
 {
  return 0;
 }

 if (a->YourPort == 0)
 {
  return 0;
 }

 if (IsZeroIp(&a->YourIp))
 {
  return 0;
 }

 timeout_value = UDP_ACCELERATION_KEEPALIVE_TIMEOUT;

 if (a->FastDetect)
 {
  timeout_value = UDP_ACCELERATION_KEEPALIVE_TIMEOUT_FAST;
 }

 if (check_keepalive)
 {
  if (a->LastRecvTick == 0 || ((a->LastRecvTick + timeout_value) < a->Now))
  {
   a->FirstStableReceiveTick = 0;
   return 0;
  }
  else
  {
   if ((a->FirstStableReceiveTick + (UINT64)UDP_ACCELERATION_REQUIRE_CONTINUOUS) <= a->Now)
   {
    return 1;
   }
   else
   {
    return 0;
   }
  }
 }

 return 1;
}
