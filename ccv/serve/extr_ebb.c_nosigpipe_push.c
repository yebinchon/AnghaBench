
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int MSG_NOSIGNAL ;
 int send (int,void const*,size_t,int) ;

__attribute__((used)) static ssize_t
nosigpipe_push(int fd, const void *buf, size_t len)
{
  int flags = 0;



  return send(fd, buf, len, flags);
}
