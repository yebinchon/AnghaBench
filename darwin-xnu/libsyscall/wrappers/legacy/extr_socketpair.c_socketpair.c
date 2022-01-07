
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOTSUP ;
 scalar_t__ EOPNOTSUPP ;
 int __socketpair (int,int,int,int*) ;
 scalar_t__ errno ;

int
socketpair(int domain, int type, int protocol, int socket_vector[2])
{
 int ret = __socketpair(domain, type, protocol, socket_vector);


 if (ret < 0 && errno == EOPNOTSUPP)
  errno = ENOTSUP;
 return ret;
}
