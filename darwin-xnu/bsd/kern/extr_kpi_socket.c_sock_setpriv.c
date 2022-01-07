
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* socket_t ;
typedef int errno_t ;
struct TYPE_5__ {int so_state; } ;


 int EINVAL ;
 int SS_PRIV ;
 int socket_lock (TYPE_1__*,int) ;
 int socket_unlock (TYPE_1__*,int) ;

errno_t
sock_setpriv(socket_t sock, int on)
{
 if (sock == ((void*)0))
  return (EINVAL);

 socket_lock(sock, 1);
 if (on)
  sock->so_state |= SS_PRIV;
 else
  sock->so_state &= ~SS_PRIV;
 socket_unlock(sock, 1);
 return (0);
}
