
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int exe ;
typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;


 int AbortExit () ;
 int GetExeName (char*,int) ;
 scalar_t__ LocalTime64 () ;
 int MAX_SIZE ;
 int Print (char*,...) ;
 int SIGHUP ;
 int SIG_IGN ;
 int SleepThread (int) ;
 scalar_t__ SystemToLocal64 (int ) ;
 scalar_t__ Tick64 () ;
 int TickToTime (scalar_t__) ;
 char* UNIX_ARG_EXIT ;
 int UnixCloseIO () ;
 scalar_t__ WIFEXITED (int) ;
 char** ZeroMalloc (int) ;
 int execvp (char*,char**) ;
 scalar_t__ fork () ;
 int setsid () ;
 int signal (int ,int ) ;
 int waitpid (scalar_t__,int*,int ) ;

bool CheckKernel()
{
 UINT num = 10, i;
 UINT64 s = Tick64();
 UINT64 t = Tick64();

 for (i = 0;i < num;i++)
 {
  UINT64 q = Tick64();
  if (t > q)
  {
   Print("Tick64 #1 Failed.\n");
   return 0;
  }

  t = q;

  SleepThread(100);
 }

 t = (Tick64() - s);
 if (t <= 500 || t >= 2000)
 {
  Print("Tick64 #2 Failed.\n");
  return 0;
 }
 else if (0)
 {
  UINT64 tick1 = Tick64();
  UINT64 time1;
  UINT64 time2;

  SleepThread(1000);

  time2 = LocalTime64();
  time1 = SystemToLocal64(TickToTime(tick1));

  if (time2 > time1)
  {
   s = time2 - time1;
  }
  else
  {
   s = time1 - time2;
  }

  if (s <= 500 || s >= 2000)
  {
   Print("TickToTime Failed.\n");
   return 0;
  }
 }
 return 1;
}
