
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timeout ;
struct timespec {scalar_t__ tv_sec; long tv_nsec; } ;
typedef int sigset_t ;
typedef int fd_set ;


 scalar_t__ EINVAL ;
 scalar_t__ ENOSYS ;
 int FD_SETSIZE ;
 int __pselect (int,int *,int *,int *,struct timespec const*,int const*) ;
 int __pselect_nocancel (int,int *,int *,int *,struct timespec const*,int const*) ;
 int _pselect_emulated (int,int *,int *,int *,struct timespec const*,int const*) ;
 scalar_t__ errno ;

int
pselect(int nfds, fd_set * __restrict readfds, fd_set * __restrict writefds,
 fd_set * __restrict exceptfds, const struct timespec * __restrict



 timeout,

 const sigset_t * __restrict sigmask)
{
 int ret;
 if (nfds > FD_SETSIZE) {
  errno = EINVAL;
  return -1;
 }





 ret = __pselect_nocancel(nfds, readfds, writefds, exceptfds, timeout, sigmask);


 if (ret == -1 && errno == ENOSYS) {
  ret = _pselect_emulated(nfds, readfds, writefds, exceptfds, timeout, sigmask);
 }

 return ret;
}
