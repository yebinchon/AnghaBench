
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {scalar_t__* t_cc; int t_state; int t_outq; int t_iflag; } ;


 int CLR (int ,int ) ;
 scalar_t__ ISSET (int ,int ) ;
 int IXOFF ;
 int SET (int ,int ) ;
 int TS_TBLOCK ;
 int TTY_LOCK_OWNED (struct tty*) ;
 size_t VSTART ;
 scalar_t__ _POSIX_VDISABLE ;
 scalar_t__ putc (scalar_t__,int *) ;
 int ttstart (struct tty*) ;

__attribute__((used)) static void
ttyunblock(struct tty *tp)
{
 TTY_LOCK_OWNED(tp);

 CLR(tp->t_state, TS_TBLOCK);
 if (ISSET(tp->t_iflag, IXOFF) && tp->t_cc[VSTART] != _POSIX_VDISABLE &&
     putc(tp->t_cc[VSTART], &tp->t_outq) != 0)
  SET(tp->t_state, TS_TBLOCK);
 ttstart(tp);
}
