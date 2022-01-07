
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int LOCK ;


 int AbortExitEx (char*) ;
 int OBJECT_ALLOC_FAIL_SLEEP_TIME ;
 scalar_t__ OBJECT_ALLOC__MAX_RETRY ;
 int * OSNewLock () ;
 int SleepThread (int ) ;

LOCK *NewLockMain()
{
 LOCK *lock;
 UINT retry = 0;

 while (1)
 {
  if ((retry++) > OBJECT_ALLOC__MAX_RETRY)
  {
   AbortExitEx("error: OSNewLock() failed.\n\n");
  }
  lock = OSNewLock();
  if (lock != ((void*)0))
  {
   break;
  }
  SleepThread(OBJECT_ALLOC_FAIL_SLEEP_TIME);
 }

 return lock;
}
