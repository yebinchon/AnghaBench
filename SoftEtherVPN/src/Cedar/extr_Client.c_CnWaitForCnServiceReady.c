
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT64 ;


 scalar_t__ CLIENT_WAIT_CN_READY_TIMEOUT ;
 scalar_t__ CnIsCnServiceReady () ;
 int SleepThread (int) ;
 scalar_t__ Tick64 () ;

void CnWaitForCnServiceReady()
{
 UINT64 start_time = Tick64();

 while ((start_time + (UINT64)CLIENT_WAIT_CN_READY_TIMEOUT) >= Tick64())
 {
  if (CnIsCnServiceReady())
  {
   break;
  }

  SleepThread(100);
 }
}
