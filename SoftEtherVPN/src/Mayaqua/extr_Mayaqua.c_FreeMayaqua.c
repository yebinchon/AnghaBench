
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DeleteLock (int *) ;
 int FreeCommandLineStr () ;
 int FreeCommandLineTokens () ;
 int FreeCryptLibrary () ;
 int FreeHamcore () ;
 int FreeKernelStatus () ;
 int FreeNetwork () ;
 int FreeOsInfo () ;
 int FreePrivateIPFile () ;
 int FreeProbe () ;
 int FreeSecure () ;
 int FreeStringLibrary () ;
 int FreeTable () ;
 int FreeThreading () ;
 int FreeTick64 () ;
 int FreeTracking () ;
 scalar_t__ IsTrackingEnabled () ;
 int MsFree () ;
 int OSFree () ;
 int PrintDebugInformation () ;
 int PrintKernelStatus () ;
 scalar_t__ g_debug ;
 scalar_t__ g_memcheck ;
 scalar_t__ init_mayaqua_counter ;
 int * tick_manual_lock ;

void FreeMayaqua()
{
 if ((--init_mayaqua_counter) > 0)
 {
  return;
 }


 FreePrivateIPFile();


 FreeProbe();


 FreeTable();


 FreeSecure();







 FreeOsInfo();


 FreeHamcore();


 FreeCommandLineStr();


 FreeCommandLineTokens();


 FreeNetwork();


 FreeTick64();


 FreeStringLibrary();


 FreeThreading();


 FreeCryptLibrary();

 if (IsTrackingEnabled())
 {

  if (g_debug)
  {
   PrintKernelStatus();
  }


  if (g_memcheck)
  {
   PrintDebugInformation();
  }


  FreeTracking();
 }


 FreeKernelStatus();

 DeleteLock(tick_manual_lock);
 tick_manual_lock = ((void*)0);


 OSFree();
}
