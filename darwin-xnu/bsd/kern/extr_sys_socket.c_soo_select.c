
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vfs_context_t ;
struct TYPE_6__ {int sb_sel; int sb_flags; } ;
struct TYPE_5__ {int sb_sel; int sb_flags; } ;
struct socket {int so_state; TYPE_3__ so_rcv; int so_oobmark; TYPE_2__ so_snd; } ;
struct fileproc {TYPE_1__* f_fglob; } ;
typedef int proc_t ;
struct TYPE_4__ {scalar_t__ fg_data; } ;




 int SB_SEL ;
 int SS_RCVATMARK ;
 scalar_t__ mac_socket_check_select (int ,struct socket*,int) ;
 int selrecord (int ,int *,void*) ;
 int socket_lock (struct socket*,int) ;
 int socket_unlock (struct socket*,int) ;
 int soreadable (struct socket*) ;
 int sowriteable (struct socket*) ;
 int vfs_context_proc (int ) ;
 int vfs_context_ucred (int ) ;

int
soo_select(struct fileproc *fp, int which, void *wql, vfs_context_t ctx)
{
 struct socket *so = (struct socket *)fp->f_fglob->fg_data;
 int retnum = 0;
 proc_t procp;

 if (so == ((void*)0) || so == (struct socket *)-1)
  return (0);

 procp = vfs_context_proc(ctx);







 socket_lock(so, 1);
 switch (which) {

 case 129:
  so->so_rcv.sb_flags |= SB_SEL;
  if (soreadable(so)) {
   retnum = 1;
   so->so_rcv.sb_flags &= ~SB_SEL;
   goto done;
  }
  selrecord(procp, &so->so_rcv.sb_sel, wql);
  break;

 case 128:
  so->so_snd.sb_flags |= SB_SEL;
  if (sowriteable(so)) {
   retnum = 1;
   so->so_snd.sb_flags &= ~SB_SEL;
   goto done;
  }
  selrecord(procp, &so->so_snd.sb_sel, wql);
  break;

 case 0:
  so->so_rcv.sb_flags |= SB_SEL;
  if (so->so_oobmark || (so->so_state & SS_RCVATMARK)) {
   retnum = 1;
   so->so_rcv.sb_flags &= ~SB_SEL;
   goto done;
  }
  selrecord(procp, &so->so_rcv.sb_sel, wql);
  break;
 }

done:
 socket_unlock(so, 1);
 return (retnum);
}
