
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socket_t ;
typedef int errno_t ;


 int kernproc ;
 int soioctl (int ,unsigned long,void*,int ) ;

errno_t
sock_ioctl(socket_t sock, unsigned long request, void *argp)
{
 return (soioctl(sock, request, argp, kernproc));
}
