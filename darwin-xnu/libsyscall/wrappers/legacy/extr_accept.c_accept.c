
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int socklen_t ;


 scalar_t__ ENOTSUP ;
 scalar_t__ EOPNOTSUPP ;
 int __accept_nocancel (int,struct sockaddr*,int *) ;
 scalar_t__ errno ;

int
accept(int s, struct sockaddr *addr, socklen_t *addrlen)
{
 int ret = __accept_nocancel(s, addr, addrlen);


 if (ret < 0 && errno == EOPNOTSUPP)
  errno = ENOTSUP;
 return ret;
}
