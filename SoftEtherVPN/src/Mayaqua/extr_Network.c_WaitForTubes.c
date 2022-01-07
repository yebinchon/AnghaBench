
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int TUBE ;


 int SleepThread (scalar_t__) ;
 int UnixWaitForTubes (int **,scalar_t__,scalar_t__) ;
 int Win32WaitForTubes (int **,scalar_t__,scalar_t__) ;

void WaitForTubes(TUBE **tubes, UINT num, UINT timeout)
{

 if (num != 0 && tubes == ((void*)0))
 {
  return;
 }
 if (timeout == 0)
 {
  return;
 }
 if (num == 0)
 {
  SleepThread(timeout);
  return;
 }




 UnixWaitForTubes(tubes, num, timeout);

}
