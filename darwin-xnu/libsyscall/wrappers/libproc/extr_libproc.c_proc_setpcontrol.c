
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int EINVAL ;
 int PROC_INFO_CALL_SETCONTROL ;
 int PROC_SELFSET_PCONTROL ;
 int const PROC_SETPC_NONE ;
 int const PROC_SETPC_TERMINATE ;
 int __proc_info (int ,int ,int ,int ,int *,int ) ;
 int errno ;
 int getpid () ;

int
proc_setpcontrol(const int control)
{
 int retval ;

 if (control < PROC_SETPC_NONE || control > PROC_SETPC_TERMINATE)
  return(EINVAL);

 if ((retval = __proc_info(PROC_INFO_CALL_SETCONTROL, getpid(), PROC_SELFSET_PCONTROL, (uint64_t)control, ((void*)0), 0)) == -1)
  return(errno);

 return(0);
}
