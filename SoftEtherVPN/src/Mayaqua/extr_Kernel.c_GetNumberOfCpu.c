
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int UnixGetNumberOfCpuInner () ;
 int Win32GetNumberOfCpuInner () ;
 int cached_number_of_cpus ;

UINT GetNumberOfCpu()
{
 UINT ret = 0;

 if (cached_number_of_cpus == 0)
 {
  UINT i = 0;




  i = UnixGetNumberOfCpuInner();


  if (i == 0)
  {
   i = 8;
  }

  cached_number_of_cpus = i;
 }

 ret = cached_number_of_cpus;

 if (ret == 0)
 {
  ret = 1;
 }
 if (ret > 128)
 {
  ret = 128;
 }

 return ret;
}
