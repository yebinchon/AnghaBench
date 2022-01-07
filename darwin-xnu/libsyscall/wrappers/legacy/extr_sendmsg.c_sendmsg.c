
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ ENOTSUP ;
 scalar_t__ EOPNOTSUPP ;
 int __sendmsg_nocancel (int,struct msghdr const*,int) ;
 scalar_t__ errno ;

ssize_t
sendmsg(int s, const struct msghdr *msg, int flags)
{
 int ret = __sendmsg_nocancel(s, msg, flags);


 if (ret < 0 && errno == EOPNOTSUPP)
  errno = ENOTSUP;
 return ret;
}
