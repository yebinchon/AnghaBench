
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOTSUP ;
 scalar_t__ EOPNOTSUPP ;
 int __listen (int,int) ;
 scalar_t__ errno ;

int
listen(int socket, int backlog)
{
 int ret = __listen(socket, backlog);


 if (ret < 0 && errno == EOPNOTSUPP)
  errno = ENOTSUP;
 return ret;
}
