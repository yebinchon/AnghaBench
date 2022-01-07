
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;


 int PROC_INFO_CALL_PIDFILEPORTINFO ;
 int __proc_info (int ,int,int,int ,void*,int) ;

int
proc_pidfileportinfo(int pid, uint32_t fileport, int flavor, void *buffer, int buffersize)
{
 int retval;

 if ((retval = __proc_info(PROC_INFO_CALL_PIDFILEPORTINFO, pid, flavor, (uint64_t)fileport, buffer, buffersize)) == -1)
  return (0);
 return (retval);
}
