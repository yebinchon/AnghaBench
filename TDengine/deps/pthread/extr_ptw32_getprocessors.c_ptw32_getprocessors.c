
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD_PTR ;


 int EAGAIN ;
 int GetCurrentProcess () ;
 scalar_t__ GetProcessAffinityMask (int ,int*,int*) ;

int
ptw32_getprocessors (int *count)
{
  DWORD_PTR vProcessCPUs;
  DWORD_PTR vSystemCPUs;
  int result = 0;







  if (GetProcessAffinityMask (GetCurrentProcess (),
         &vProcessCPUs, &vSystemCPUs))
    {
      DWORD_PTR bit;
      int CPUs = 0;

      for (bit = 1; bit != 0; bit <<= 1)
 {
   if (vProcessCPUs & bit)
     {
       CPUs++;
     }
 }
      *count = CPUs;
    }
  else
    {
      result = EAGAIN;
    }



  return (result);
}
