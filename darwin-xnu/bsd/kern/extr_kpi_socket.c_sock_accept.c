
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int socket_t ;
typedef int sock_upcall ;
typedef int errno_t ;


 int sock_accept_common (int ,struct sockaddr*,int,int,int ,void*,int *,int) ;

errno_t
sock_accept(socket_t sock, struct sockaddr *from, int fromlen, int flags,
    sock_upcall callback, void *cookie, socket_t *new_sock)
{
 return (sock_accept_common(sock, from, fromlen, flags,
     callback, cookie, new_sock, 0));
}
