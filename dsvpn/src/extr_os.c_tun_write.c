
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int TIMEOUT ;
 int safe_write (int,void const*,size_t,int ) ;

ssize_t tun_write(int fd, const void *data, size_t size)
{
    return safe_write(fd, data, size, TIMEOUT);
}
