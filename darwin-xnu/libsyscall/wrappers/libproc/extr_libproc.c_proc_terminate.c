
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int EINVAL ;
 int PROC_INFO_CALL_TERMINATE ;
 int __proc_info (int ,int ,int ,int ,int *,int ) ;
 int errno ;

int
proc_terminate(pid_t pid, int *sig)
{
 int retval;

 if (!sig) {
  return EINVAL;
 }

 retval = __proc_info(PROC_INFO_CALL_TERMINATE, pid, 0, 0, ((void*)0), 0);
 if (retval == -1) {
  return errno;
 }

 *sig = retval;

 return 0;
}
