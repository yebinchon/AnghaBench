
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* socket_t ;
typedef int errno_t ;
struct TYPE_7__ {int so_type; } ;


 int SOCK_DOM (TYPE_1__*) ;
 int SOCK_PROTO (TYPE_1__*) ;
 int socket_lock (TYPE_1__*,int) ;
 int socket_unlock (TYPE_1__*,int) ;

errno_t
sock_gettype(socket_t sock, int *outDomain, int *outType, int *outProtocol)
{
 socket_lock(sock, 1);
 if (outDomain != ((void*)0))
  *outDomain = SOCK_DOM(sock);
 if (outType != ((void*)0))
  *outType = sock->so_type;
 if (outProtocol != ((void*)0))
  *outProtocol = SOCK_PROTO(sock);
 socket_unlock(sock, 1);
 return (0);
}
