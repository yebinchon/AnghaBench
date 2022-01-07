
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_3__* socket_t ;
typedef int errno_t ;
struct TYPE_8__ {int sb_flags; } ;
struct TYPE_7__ {int sb_flags; } ;
struct TYPE_9__ {TYPE_2__ so_snd; TYPE_1__ so_rcv; } ;


 int SB_NOINTR ;
 int socket_lock (TYPE_3__*,int) ;
 int socket_unlock (TYPE_3__*,int) ;

errno_t
sock_nointerrupt(socket_t sock, int on)
{
 socket_lock(sock, 1);

 if (on) {
  sock->so_rcv.sb_flags |= SB_NOINTR;
  sock->so_snd.sb_flags |= SB_NOINTR;
 } else {
  sock->so_rcv.sb_flags &= ~SB_NOINTR;
  sock->so_snd.sb_flags &= ~SB_NOINTR;
 }

 socket_unlock(sock, 1);

 return (0);
}
