
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; int tv_sec; } ;
struct timespec {int tv_nsec; int tv_sec; } ;
typedef int const sigset_t ;
typedef int fd_set ;
typedef scalar_t__ __darwin_suseconds_t ;


 int SIG_SETMASK ;
 int __pthread_sigmask (int ,int const*,int const*) ;
 int errno ;
 int select (int,int *,int *,int *,struct timeval*) ;

__attribute__((used)) static int
_pselect_emulated(int count, fd_set * __restrict rfds, fd_set * __restrict wfds,
  fd_set * __restrict efds, const struct timespec * __restrict timo,
  const sigset_t * __restrict mask)
{
 sigset_t omask;
 struct timeval tvtimo, *tvp;
 int rv, sverrno;

 if (timo) {
  tvtimo.tv_sec = timo->tv_sec;
  tvtimo.tv_usec = (__darwin_suseconds_t)(timo->tv_nsec / 1000);
  tvp = &tvtimo;
 } else {
  tvp = 0;
 }

 if (mask != 0) {
  rv = __pthread_sigmask(SIG_SETMASK, mask, &omask);
  if (rv != 0)
   return rv;
 }

 rv = select(count, rfds, wfds, efds, tvp);
 if (mask != 0) {
  sverrno = errno;
  __pthread_sigmask(SIG_SETMASK, &omask, (sigset_t *)0);
  errno = sverrno;
 }

 return rv;
}
