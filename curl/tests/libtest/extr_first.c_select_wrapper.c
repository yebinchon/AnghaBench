
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef int fd_set ;
typedef scalar_t__ DWORD ;


 int EINVAL ;
 int SET_SOCKERRNO (int ) ;
 int Sleep (scalar_t__) ;
 int select (int,int *,int *,int *,struct timeval*) ;

int select_wrapper(int nfds, fd_set *rd, fd_set *wr, fd_set *exc,
                   struct timeval *tv)
{
  if(nfds < 0) {
    SET_SOCKERRNO(EINVAL);
    return -1;
  }
  return select(nfds, rd, wr, exc, tv);
}
