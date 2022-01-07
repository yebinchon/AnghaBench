
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int ssize_t ;
typedef int socklen_t ;


 scalar_t__ ENOTSUP ;
 scalar_t__ EOPNOTSUPP ;
 int __recvfrom_nocancel (int,void*,size_t,int,struct sockaddr*,int *) ;
 scalar_t__ errno ;

ssize_t
recvfrom(int s, void *buf, size_t len, int flags, struct sockaddr * __restrict from, socklen_t * __restrict fromlen)
{
 int ret = __recvfrom_nocancel(s, buf, len, flags, from, fromlen);


 if (ret < 0 && errno == EOPNOTSUPP)
  errno = ENOTSUP;
 return ret;
}
