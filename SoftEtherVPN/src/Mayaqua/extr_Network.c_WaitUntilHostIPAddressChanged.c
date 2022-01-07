
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT64 ;
typedef int UINT ;
typedef int EVENT ;


 int GetHostIPAddressHash32 () ;
 scalar_t__ IsRouteChanged (void*) ;
 int MIN (int,int) ;
 scalar_t__ Tick64 () ;
 scalar_t__ Wait (int *,int) ;

void WaitUntilHostIPAddressChanged(void *p, EVENT *event, UINT timeout, UINT ip_check_interval)
{
 UINT64 start, end;
 UINT last_hash;

 if (timeout == 0x7FFFFFFF)
 {
  timeout = 0xFFFFFFFF;
 }
 if (ip_check_interval == 0)
 {
  ip_check_interval = 0xFFFFFFFF;
 }
 if (event == ((void*)0) || timeout == 0)
 {
  return;
 }

 start = Tick64();
 end = start + (UINT64)timeout;
 last_hash = GetHostIPAddressHash32();

 while (1)
 {
  UINT64 now = Tick64();
  UINT next_interval;

  if (now >= end)
  {
   break;
  }

  if (p != ((void*)0))
  {
   if (IsRouteChanged(p))
   {
    break;
   }
  }

  if (last_hash != GetHostIPAddressHash32())
  {
   break;
  }

  next_interval = (UINT)(end - now);
  next_interval = MIN(next_interval, ip_check_interval);

  if (Wait(event, next_interval))
  {
   break;
  }
 }
}
