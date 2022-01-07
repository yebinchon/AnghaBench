
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;
typedef int * HANDLE ;
typedef int DWORD ;


 int CloseHandle (int *) ;
 int EPERM ;
 int ERROR_ACCESS_DENIED ;
 int ESRCH ;
 scalar_t__ GetCurrentProcessId () ;
 int GetLastError () ;
 int * OpenProcess (int ,int ,int ) ;
 int PROCESS_QUERY_INFORMATION ;
 int PTW32_FALSE ;
 int SCHED_OTHER ;
 int errno ;

int
sched_getscheduler (pid_t pid)
{





  if (0 != pid)
    {
      int selfPid = (int) GetCurrentProcessId ();

      if (pid != selfPid)
 {
   HANDLE h =
     OpenProcess (PROCESS_QUERY_INFORMATION, PTW32_FALSE, (DWORD) pid);

   if (((void*)0) == h)
     {
       errno =
  (GetLastError () ==
   (0xFF & ERROR_ACCESS_DENIED)) ? EPERM : ESRCH;
       return -1;
     }
   else
     CloseHandle(h);
 }
    }

  return SCHED_OTHER;
}
