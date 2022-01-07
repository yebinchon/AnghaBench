
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int ssize_t ;
typedef int socklen_t ;


 scalar_t__ ENOTSUP ;
 scalar_t__ EOPNOTSUPP ;
 int __sendto_nocancel (int,void const*,size_t,int,struct sockaddr const*,int ) ;
 scalar_t__ errno ;

ssize_t
sendto(int s, const void *msg, size_t len, int flags, const struct sockaddr *to, socklen_t tolen)
{
 int ret = __sendto_nocancel(s, msg, len, flags, to, tolen);


 if (ret < 0 && errno == EOPNOTSUPP)
  errno = ENOTSUP;
 return ret;
}
