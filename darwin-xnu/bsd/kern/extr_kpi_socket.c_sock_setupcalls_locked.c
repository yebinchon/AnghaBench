
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_3__* socket_t ;
typedef int * sock_upcall ;
struct TYPE_6__ {int sb_flags; int * sb_upcallarg; int * sb_upcall; } ;
struct TYPE_5__ {int sb_flags; int * sb_upcallarg; int * sb_upcall; } ;
struct TYPE_7__ {TYPE_2__ so_snd; TYPE_1__ so_rcv; } ;


 int SB_UPCALL ;
 int SB_UPCALL_LOCK ;

void
sock_setupcalls_locked(socket_t sock, sock_upcall rcallback, void *rcontext,
    sock_upcall wcallback, void *wcontext, int locked)
{
 if (rcallback != ((void*)0)) {
  sock->so_rcv.sb_flags |= SB_UPCALL;
  if (locked)
   sock->so_rcv.sb_flags |= SB_UPCALL_LOCK;
  sock->so_rcv.sb_upcall = rcallback;
  sock->so_rcv.sb_upcallarg = rcontext;
 } else {
  sock->so_rcv.sb_flags &= ~(SB_UPCALL | SB_UPCALL_LOCK);
  sock->so_rcv.sb_upcall = ((void*)0);
  sock->so_rcv.sb_upcallarg = ((void*)0);
 }

 if (wcallback != ((void*)0)) {
  sock->so_snd.sb_flags |= SB_UPCALL;
  if (locked)
   sock->so_snd.sb_flags |= SB_UPCALL_LOCK;
  sock->so_snd.sb_upcall = wcallback;
  sock->so_snd.sb_upcallarg = wcontext;
 } else {
  sock->so_snd.sb_flags &= ~(SB_UPCALL | SB_UPCALL_LOCK);
  sock->so_snd.sb_upcall = ((void*)0);
  sock->so_snd.sb_upcallarg = ((void*)0);
 }
}
