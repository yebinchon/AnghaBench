
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int * socket_t ;
typedef int sock_evupcall ;
typedef int errno_t ;


 int EINVAL ;
 int sock_catchevents_locked (int *,int ,void*,int ) ;
 int socket_lock (int *,int) ;
 int socket_unlock (int *,int) ;

errno_t
sock_catchevents(socket_t sock, sock_evupcall ecallback, void *econtext,
    u_int32_t emask)
{
 if (sock == ((void*)0))
  return (EINVAL);

 socket_lock(sock, 1);
 sock_catchevents_locked(sock, ecallback, econtext, emask);
 socket_unlock(sock, 1);

 return (0);
}
