
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int socklen_t ;


 scalar_t__ ENOTSUP ;
 scalar_t__ EOPNOTSUPP ;
 int __getsockname (int,struct sockaddr*,int *) ;
 scalar_t__ errno ;

int
getsockname(int socket, struct sockaddr * __restrict address,
 socklen_t * __restrict address_len)
{
 int ret = __getsockname(socket, address, address_len);


 if (ret < 0 && errno == EOPNOTSUPP)
  errno = ENOTSUP;
 return ret;
}
