
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {scalar_t__ c_cc; } ;
struct tty {int t_lflag; scalar_t__ t_rocount; int t_iflag; int t_column; int t_state; int t_rocol; int* t_cc; TYPE_1__ t_rawq; } ;



 int CCLASS (int) ;
 int CCONT (int) ;
 int CLR (int,int ) ;

 int ECHO ;
 int ECHOCTL ;
 int ECHOE ;
 int ECHOPRT ;
 int EXTPROC ;
 int FLUSHO ;
 scalar_t__ ISSET (int,int ) ;
 int IUTF8 ;


 char* PANICSTR ;

 int SET (int,int ) ;

 int TS_CNTTB ;
 int TS_ERASE ;
 int TTY_CHARMASK ;
 int TTY_LOCK_OWNED (struct tty*) ;
 char TTY_QUOTE ;
 size_t VERASE ;

 int * firstc (TYPE_1__*,int*) ;
 int * nextc (TYPE_1__*,int *,int*) ;
 int panic (char*,int,int) ;
 int printf (char*,int,int) ;
 int ttyecho (int,struct tty*) ;
 int ttyoutput (char,struct tty*) ;
 int ttyretype (struct tty*) ;
 int ttyrubo (struct tty*,int) ;

__attribute__((used)) static void
ttyrub(int c, struct tty *tp)
{
 u_char *cp;
 int savecol;
 int tabc;

 TTY_LOCK_OWNED(tp);

 if (!ISSET(tp->t_lflag, ECHO) || ISSET(tp->t_lflag, EXTPROC))
  return;
 CLR(tp->t_lflag, FLUSHO);
 if (ISSET(tp->t_lflag, ECHOE)) {
  if (tp->t_rocount == 0) {



   ttyretype(tp);
   return;
  }
  if (c == ('\t' | TTY_QUOTE) || c == ('\n' | TTY_QUOTE))
   ttyrubo(tp, 2);
  else {
   CLR(c, ~TTY_CHARMASK);
   switch (CCLASS(c)) {
   case 131:
    if(!(ISSET(tp->t_iflag, IUTF8) && CCONT(c))) {
     ttyrubo(tp, 1);
    }
    break;
   case 134:
   case 133:
   case 132:
   case 130:
   case 128:
    if (ISSET(tp->t_lflag, ECHOCTL))
     ttyrubo(tp, 2);
    break;
   case 129:
    if (tp->t_rocount < tp->t_rawq.c_cc) {
     ttyretype(tp);
     return;
    }
    savecol = tp->t_column;
    SET(tp->t_state, TS_CNTTB);
    SET(tp->t_lflag, FLUSHO);
    tp->t_column = tp->t_rocol;
    for (cp = firstc(&tp->t_rawq, &tabc); cp;
        cp = nextc(&tp->t_rawq, cp, &tabc))
     ttyecho(tabc, tp);
    CLR(tp->t_lflag, FLUSHO);
    CLR(tp->t_state, TS_CNTTB);


    savecol -= tp->t_column;
    tp->t_column += savecol;
    if (savecol > 8)
     savecol = 8;
    while (--savecol >= 0)
     (void)ttyoutput('\b', tp);
    break;
   default:

    printf("ttyrub: would panic c = %d, val = %d\n", c, CCLASS(c));



   }
  }
 } else if (ISSET(tp->t_lflag, ECHOPRT)) {
  if (!ISSET(tp->t_state, TS_ERASE)) {
   SET(tp->t_state, TS_ERASE);
   (void)ttyoutput('\\', tp);
  }
  ttyecho(c, tp);
 } else
  ttyecho(tp->t_cc[VERASE], tp);
 --tp->t_rocount;
}
