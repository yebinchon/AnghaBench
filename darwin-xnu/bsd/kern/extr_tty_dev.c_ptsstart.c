
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int t_state; int t_dev; } ;
struct ptmx_ioctl {int pt_flags; int pt_send; } ;


 int FREAD ;
 int PF_STOPPED ;
 int TIOCPKT_START ;
 int TS_TTSTOP ;
 int ptcwakeup (struct tty*,int ) ;
 struct ptmx_ioctl* pty_get_ioctl (int ,int ,int *) ;

__attribute__((used)) static void
ptsstart(struct tty *tp)
{
 struct ptmx_ioctl *pti = pty_get_ioctl(tp->t_dev, 0, ((void*)0));
 if (pti == ((void*)0))
  goto out;
 if (tp->t_state & TS_TTSTOP)
         goto out;
 if (pti->pt_flags & PF_STOPPED) {
  pti->pt_flags &= ~PF_STOPPED;
  pti->pt_send = TIOCPKT_START;
 }
 ptcwakeup(tp, FREAD);
out:
 return;
}
