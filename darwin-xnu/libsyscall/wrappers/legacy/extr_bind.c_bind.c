
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int socklen_t ;


 scalar_t__ ENOTSUP ;
 scalar_t__ EOPNOTSUPP ;
 int __bind (int,struct sockaddr const*,int ) ;
 scalar_t__ errno ;

int
bind(int s, const struct sockaddr *name, socklen_t namelen)
{
 int ret = __bind(s, name, namelen);


 if (ret < 0 && errno == EOPNOTSUPP)
  errno = ENOTSUP;
 return ret;
}
