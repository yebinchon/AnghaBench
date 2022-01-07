
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
struct uthread {int uu_flag; } ;


 int EINTR ;
 int UT_CANCEL ;
 int UT_CANCELDISABLE ;
 int UT_CANCELED ;
 int UT_NOTCANCELPT ;
 int current_thread () ;
 scalar_t__ get_bsdthread_info (int ) ;
 int thread_abort_safely (int ) ;
 int unix_syscall_return (int ) ;

void
__pthread_testcancel(int presyscall)
{

 thread_t self = current_thread();
 struct uthread * uthread;

 uthread = (struct uthread *)get_bsdthread_info(self);


 uthread->uu_flag &= ~UT_NOTCANCELPT;

 if ((uthread->uu_flag & (UT_CANCELDISABLE | UT_CANCEL | UT_CANCELED)) == UT_CANCEL) {
  if(presyscall != 0) {
   unix_syscall_return(EINTR);

  } else
   thread_abort_safely(self);
 }
}
