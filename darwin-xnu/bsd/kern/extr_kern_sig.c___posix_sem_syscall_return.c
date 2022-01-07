
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ kern_return_t ;


 int EINTR ;
 int EINVAL ;
 int ETIMEDOUT ;
 scalar_t__ KERN_ABORTED ;
 scalar_t__ KERN_OPERATION_TIMED_OUT ;
 scalar_t__ KERN_SUCCESS ;
 int unix_syscall_return (int) ;

__attribute__((noreturn))
void
__posix_sem_syscall_return(kern_return_t kern_result)
{
 int error = 0;

 if (kern_result == KERN_SUCCESS)
  error = 0;
 else if (kern_result == KERN_ABORTED)
  error = EINTR;
 else if (kern_result == KERN_OPERATION_TIMED_OUT)
  error = ETIMEDOUT;
 else
  error = EINVAL;
 unix_syscall_return(error);

}
