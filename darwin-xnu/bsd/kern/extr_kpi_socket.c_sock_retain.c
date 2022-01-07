
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* socket_t ;
struct TYPE_5__ {int so_usecount; int so_retaincnt; } ;


 int socket_lock (TYPE_1__*,int) ;
 int socket_unlock (TYPE_1__*,int) ;

void
sock_retain(socket_t sock)
{
 if (sock == ((void*)0))
  return;

 socket_lock(sock, 1);
 sock->so_retaincnt++;
 sock->so_usecount++;
 socket_unlock(sock, 1);
}
