
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lwip_fcntl (int,int,int) ;

__attribute__((used)) static int lwip_fcntl_r_wrapper(int fd, int cmd, int arg)
{
    return lwip_fcntl(fd, cmd, arg);
}
