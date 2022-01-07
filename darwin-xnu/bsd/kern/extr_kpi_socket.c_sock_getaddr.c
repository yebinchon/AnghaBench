
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int * socket_t ;
typedef int errno_t ;


 int EINVAL ;
 int socket_lock (int *,int) ;
 int socket_unlock (int *,int) ;
 int sogetaddr_locked (int *,struct sockaddr**,int) ;

errno_t
sock_getaddr(socket_t sock, struct sockaddr **psa, int peer)
{
 int error;

 if (sock == ((void*)0) || psa == ((void*)0))
  return (EINVAL);

 socket_lock(sock, 1);
 error = sogetaddr_locked(sock, psa, peer);
 socket_unlock(sock, 1);

 return (error);
}
