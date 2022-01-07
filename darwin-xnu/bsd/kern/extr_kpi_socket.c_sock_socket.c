
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socket_t ;
typedef int sock_upcall ;
typedef int errno_t ;


 int sock_socket_common (int,int,int,int ,void*,int *,int) ;

errno_t
sock_socket(int domain, int type, int protocol, sock_upcall callback,
    void *context, socket_t *new_so)
{
 return (sock_socket_common(domain, type, protocol, callback,
     context, new_so, 0));
}
