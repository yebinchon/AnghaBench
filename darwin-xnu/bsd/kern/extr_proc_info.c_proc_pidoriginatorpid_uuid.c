
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_t ;
typedef int uint32_t ;
typedef int pid_t ;
typedef scalar_t__ kern_return_t ;


 int EINVAL ;
 int ENOATTR ;
 int ESRCH ;
 scalar_t__ KERN_INVALID_TASK ;
 scalar_t__ KERN_INVALID_VALUE ;
 int proc_piduuidinfo (int ,int ,int ) ;
 scalar_t__ thread_get_current_voucher_origin_pid (int *) ;

int
proc_pidoriginatorpid_uuid(uuid_t uuid, uint32_t buffersize, pid_t *pid)
{
 pid_t originator_pid;
 kern_return_t kr;
 int error;





 kr = thread_get_current_voucher_origin_pid(&originator_pid);

 if (kr) {
  if (kr == KERN_INVALID_TASK)
   error = ESRCH;
  else if (kr == KERN_INVALID_VALUE)
   error = ENOATTR;
  else
   error = EINVAL;
  return error;
 }

 *pid = originator_pid;
 error = proc_piduuidinfo(originator_pid, uuid, buffersize);
 return error;
}
