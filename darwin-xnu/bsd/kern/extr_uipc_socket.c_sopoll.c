
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sb_sel; int sb_flags; } ;
struct TYPE_3__ {int sb_sel; int sb_flags; } ;
struct socket {int so_state; TYPE_2__ so_snd; TYPE_1__ so_rcv; scalar_t__ so_oobmark; } ;
struct proc {int dummy; } ;
typedef int kauth_cred_t ;


 int POLLIN ;
 int POLLOUT ;
 int POLLPRI ;
 int POLLRDBAND ;
 int POLLRDNORM ;
 int POLLWRNORM ;
 int PROC_NULL ;
 int SB_SEL ;
 int SS_RCVATMARK ;
 struct proc* current_proc () ;
 int selrecord (struct proc*,int *,void*) ;
 int so_update_last_owner_locked (struct socket*,int ) ;
 int so_update_policy (struct socket*) ;
 int socket_lock (struct socket*,int) ;
 int socket_unlock (struct socket*,int) ;
 scalar_t__ soreadable (struct socket*) ;
 scalar_t__ sowriteable (struct socket*) ;

int
sopoll(struct socket *so, int events, kauth_cred_t cred, void * wql)
{
#pragma unused(cred)
 struct proc *p = current_proc();
 int revents = 0;

 socket_lock(so, 1);
 so_update_last_owner_locked(so, PROC_NULL);
 so_update_policy(so);

 if (events & (POLLIN | POLLRDNORM))
  if (soreadable(so))
   revents |= events & (POLLIN | POLLRDNORM);

 if (events & (POLLOUT | POLLWRNORM))
  if (sowriteable(so))
   revents |= events & (POLLOUT | POLLWRNORM);

 if (events & (POLLPRI | POLLRDBAND))
  if (so->so_oobmark || (so->so_state & SS_RCVATMARK))
   revents |= events & (POLLPRI | POLLRDBAND);

 if (revents == 0) {
  if (events & (POLLIN | POLLPRI | POLLRDNORM | POLLRDBAND)) {




   so->so_rcv.sb_flags |= SB_SEL;
   selrecord(p, &so->so_rcv.sb_sel, wql);
  }

  if (events & (POLLOUT | POLLWRNORM)) {




   so->so_snd.sb_flags |= SB_SEL;
   selrecord(p, &so->so_snd.sb_sel, wql);
  }
 }

 socket_unlock(so, 1);
 return (revents);
}
