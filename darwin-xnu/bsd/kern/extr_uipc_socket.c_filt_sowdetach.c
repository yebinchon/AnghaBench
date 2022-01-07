
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int si_note; } ;
struct TYPE_8__ {int sb_flags; TYPE_3__ sb_sel; } ;
struct socket {TYPE_4__ so_snd; } ;
struct knote {TYPE_2__* kn_fp; } ;
struct TYPE_6__ {TYPE_1__* f_fglob; } ;
struct TYPE_5__ {scalar_t__ fg_data; } ;


 scalar_t__ KNOTE_DETACH (int *,struct knote*) ;
 int SB_KNOTE ;
 int socket_lock (struct socket*,int) ;
 int socket_unlock (struct socket*,int) ;

__attribute__((used)) static void
filt_sowdetach(struct knote *kn)
{
 struct socket *so = (struct socket *)kn->kn_fp->f_fglob->fg_data;
 socket_lock(so, 1);

 if (so->so_snd.sb_flags & SB_KNOTE)
  if (KNOTE_DETACH(&so->so_snd.sb_sel.si_note, kn))
   so->so_snd.sb_flags &= ~SB_KNOTE;
 socket_unlock(so, 1);
}
