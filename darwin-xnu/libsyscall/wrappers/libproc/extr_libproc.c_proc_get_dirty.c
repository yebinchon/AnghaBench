
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int pid_t ;


 int EINVAL ;
 int PROC_DIRTYCONTROL_GET ;
 int PROC_INFO_CALL_DIRTYCONTROL ;
 int __proc_info (int ,int ,int ,int ,int *,int ) ;
 int errno ;

int
proc_get_dirty(pid_t pid, uint32_t *flags)
{
 int retval;

 if (!flags) {
  return EINVAL;
 }

 retval = __proc_info(PROC_INFO_CALL_DIRTYCONTROL, pid, PROC_DIRTYCONTROL_GET, 0, ((void*)0), 0);
 if (retval == -1) {
  return errno;
 }

 *flags = retval;

 return 0;
}
