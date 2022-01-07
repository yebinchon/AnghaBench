
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CloseHandle (scalar_t__) ;
 int DeleteCriticalSection (int *) ;
 int INFINITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int KillCDThread ;
 int TerminateThread (scalar_t__,int ) ;
 scalar_t__ WAIT_TIMEOUT ;
 scalar_t__ WaitForSingleObject (scalar_t__,int ) ;
 int cd_cs ;
 scalar_t__ hCDROM ;
 scalar_t__ thread_handle ;

void SPTICDDeInit() {
 if (thread_handle != INVALID_HANDLE_VALUE)
 {

  KillCDThread=1;
  if (WaitForSingleObject(thread_handle,INFINITE) == WAIT_TIMEOUT)
  {

   TerminateThread(thread_handle,0);
  }
  CloseHandle(thread_handle);
  thread_handle = INVALID_HANDLE_VALUE;
 }
 DeleteCriticalSection(&cd_cs);

 CloseHandle(hCDROM);
}
