
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * socket_t ;
typedef int * sock_upcall ;
typedef int errno_t ;


 int EINVAL ;
 int sock_setupcalls_locked (int *,int *,void*,int *,void*,int ) ;
 int socket_lock (int *,int) ;
 int socket_unlock (int *,int) ;

errno_t
sock_setupcall(socket_t sock, sock_upcall callback, void *context)
{
 if (sock == ((void*)0))
  return (EINVAL);
 socket_lock(sock, 1);



 sock_setupcalls_locked(sock, callback, context, ((void*)0), ((void*)0), 0);

 socket_unlock(sock, 1);

 return (0);
}
