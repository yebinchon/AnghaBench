
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* socket_t ;
struct TYPE_5__ {int so_state; } ;


 int SS_ISCONNECTED ;
 int socket_lock (TYPE_1__*,int) ;
 int socket_unlock (TYPE_1__*,int) ;

int
sock_isconnected(socket_t sock)
{
 int retval;

 socket_lock(sock, 1);
 retval = ((sock->so_state & SS_ISCONNECTED) ? 1 : 0);
 socket_unlock(sock, 1);
 return (retval);
}
