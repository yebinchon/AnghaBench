
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usize ;
typedef int user_size_t ;
typedef int user_addr_t ;
typedef int user64_size_t ;
typedef int user32_size_t ;
typedef scalar_t__ uint64_t ;
struct proc {int dummy; } ;


 scalar_t__ IS_64BIT_PROCESS (struct proc*) ;
 unsigned int KEVENT_FLAG_KERNEL ;
 int copyout (int *,int ,int) ;

__attribute__((used)) static int
kevent_put_data_size(
  struct proc *p,
  uint64_t data_available,
  unsigned int flags,
  user_size_t resid)
{
 int error = 0;

 if (data_available) {
  if (flags & KEVENT_FLAG_KERNEL) {
   *(user_size_t *)(uintptr_t)data_available = resid;
  } else if (IS_64BIT_PROCESS(p)) {
   user64_size_t usize = (user64_size_t)resid;
   error = copyout(&usize, (user_addr_t)data_available, sizeof(usize));
  } else {
   user32_size_t usize = (user32_size_t)resid;
   error = copyout(&usize, (user_addr_t)data_available, sizeof(usize));
  }
 }
 return error;
}
