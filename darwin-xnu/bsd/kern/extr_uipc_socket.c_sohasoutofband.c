
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int si_note; } ;
struct TYPE_3__ {int sb_flags; TYPE_2__ sb_sel; } ;
struct socket {TYPE_1__ so_rcv; int so_pgid; } ;


 int KNOTE (int *,int) ;
 int NOTE_OOB ;
 int SB_KNOTE ;
 int SIGURG ;
 int SO_FILT_HINT_LOCKED ;
 int gsignal (int ,int ) ;
 int proc_signal (int ,int ) ;
 int selwakeup (TYPE_2__*) ;

void
sohasoutofband(struct socket *so)
{
 if (so->so_pgid < 0)
  gsignal(-so->so_pgid, SIGURG);
 else if (so->so_pgid > 0)
  proc_signal(so->so_pgid, SIGURG);
 selwakeup(&so->so_rcv.sb_sel);
 if (so->so_rcv.sb_flags & SB_KNOTE) {
  KNOTE(&so->so_rcv.sb_sel.si_note,
      (NOTE_OOB | SO_FILT_HINT_LOCKED));
 }
}
