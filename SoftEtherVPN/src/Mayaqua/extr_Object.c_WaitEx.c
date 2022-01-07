
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
typedef int EVENT ;


 scalar_t__ INFINITE ;
 scalar_t__ MIN (scalar_t__,int) ;
 int SleepThread (scalar_t__) ;
 scalar_t__ Tick64 () ;
 scalar_t__ Wait (int *,scalar_t__) ;

bool WaitEx(EVENT *e, UINT timeout, volatile bool *cancel)
{
 bool dummy_bool = 0;
 UINT64 start, giveup;

 if (cancel == ((void*)0))
 {
  cancel = &dummy_bool;
 }

 start = Tick64();

 if (timeout == INFINITE || timeout == 0x7FFFFFFF)
 {
  giveup = 0;
 }
 else
 {
  giveup = start + (UINT64)timeout;
 }

 while (1)
 {
  UINT64 now = Tick64();
  UINT interval_to_giveup = (UINT)(giveup - now);
  if (giveup == 0)
  {
   interval_to_giveup = INFINITE;
  }
  else
  {
   if (now >= giveup)
   {

    return 0;
   }
  }

  interval_to_giveup = MIN(interval_to_giveup, 25);

  if (*cancel)
  {

   return 0;
  }

  if (e != ((void*)0))
  {
   if (Wait(e, interval_to_giveup))
   {

    return 1;
   }
  }
  else
  {
   SleepThread(interval_to_giveup);
  }
 }
}
