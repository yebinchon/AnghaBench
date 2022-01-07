
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty {int t_dev; } ;
struct TYPE_2__ {int si_note; } ;
struct ptmx_ioctl {TYPE_1__ pt_selw; TYPE_1__ pt_selr; } ;


 int FREAD ;
 int FWRITE ;
 int KNOTE (int *,int) ;
 int TSA_PTC_READ (struct tty*) ;
 int TSA_PTC_WRITE (struct tty*) ;
 struct ptmx_ioctl* pty_get_ioctl (int ,int ,int *) ;
 int selwakeup (TYPE_1__*) ;
 int wakeup (int ) ;

__attribute__((used)) static void
ptcwakeup(struct tty *tp, int flag)
{
 struct ptmx_ioctl *pti = pty_get_ioctl(tp->t_dev, 0, ((void*)0));
 if (pti == ((void*)0))
  return;

 if (flag & FREAD) {
  selwakeup(&pti->pt_selr);
  wakeup(TSA_PTC_READ(tp));
  KNOTE(&pti->pt_selr.si_note, 1);
 }
 if (flag & FWRITE) {
  selwakeup(&pti->pt_selw);
  wakeup(TSA_PTC_WRITE(tp));
  KNOTE(&pti->pt_selw.si_note, 1);
 }
}
