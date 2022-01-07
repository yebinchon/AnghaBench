
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECK_FOR_INTERRUPTS () ;
 int MyLatch ;
 int PG_WAIT_EXTENSION ;
 int ResetLatch (int ) ;
 int WL_LATCH_SET ;
 int WL_POSTMASTER_DEATH ;
 int WL_TIMEOUT ;
 int WaitLatch (int ,int,long,int ) ;
 scalar_t__ got_sigterm ;
 int proc_exit (int) ;

__attribute__((used)) static bool
ShouldAcquireLock(long sleepms)
{
 int rc;


 if (got_sigterm)
 {
  return 0;
 }

 rc = WaitLatch(MyLatch, WL_LATCH_SET | WL_TIMEOUT | WL_POSTMASTER_DEATH,
       sleepms * 1L, PG_WAIT_EXTENSION);
 ResetLatch(MyLatch);


 if (rc & WL_POSTMASTER_DEATH)
 {
  proc_exit(1);
 }

 CHECK_FOR_INTERRUPTS();

 return !got_sigterm;
}
