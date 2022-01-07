
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROC_INFO_CALL_PIDORIGINATORINFO ;
 int __proc_info (int ,int ,int,int ,void*,int) ;
 int getpid () ;

int
proc_pidoriginatorinfo(int flavor, void *buffer, int buffersize)
{
 int retval;

 if ((retval = __proc_info(PROC_INFO_CALL_PIDORIGINATORINFO, getpid(), flavor, 0, buffer, buffersize)) == -1)
  return(0);

 return(retval);
}
