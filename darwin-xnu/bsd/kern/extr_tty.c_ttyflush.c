
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int t_outq; int t_state; int t_iflag; scalar_t__ t_rocol; scalar_t__ t_rocount; int t_lflag; int t_rawq; int t_canq; } ;


 int CLR (int ,int ) ;
 int FLUSHQ (int *) ;
 int FREAD ;
 int FWRITE ;
 scalar_t__ ISSET (int ,int ) ;
 int IXOFF ;
 int PENDIN ;
 int SET (int ,int ) ;
 int TSA_OCOMPLETE (struct tty*) ;
 int TS_LOCAL ;
 int TS_SO_OCOMPLETE ;
 int TS_TBLOCK ;
 int TS_TTSTOP ;
 int TTOPRI ;
 int TTY_LOCK_OWNED (struct tty*) ;
 int hz ;
 int ttwakeup (struct tty*) ;
 int ttwwakeup (struct tty*) ;
 int ttysleep (struct tty*,int ,int ,char*,int) ;
 int ttystop (struct tty*,int) ;
 int ttyunblock (struct tty*) ;

void
ttyflush(struct tty *tp, int rw)
{
 TTY_LOCK_OWNED(tp);




 if (rw & FWRITE) {
  FLUSHQ(&tp->t_outq);
  CLR(tp->t_state, TS_TTSTOP);
 }
        ttystop(tp, rw);
        if (rw & FREAD) {
  FLUSHQ(&tp->t_canq);
  FLUSHQ(&tp->t_rawq);
  CLR(tp->t_lflag, PENDIN);
  tp->t_rocount = 0;
  tp->t_rocol = 0;
  CLR(tp->t_state, TS_LOCAL);
  ttwakeup(tp);
  if (ISSET(tp->t_state, TS_TBLOCK)) {
   if (rw & FWRITE)
    FLUSHQ(&tp->t_outq);
   ttyunblock(tp);
   CLR(tp->t_state, TS_TBLOCK);
  }
 }
 if (rw & FWRITE) {
  FLUSHQ(&tp->t_outq);
  ttwwakeup(tp);
 }
}
