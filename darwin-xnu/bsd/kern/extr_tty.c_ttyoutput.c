
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int tcflag_t ;
struct tty {int t_column; int t_outq; int t_lflag; scalar_t__ t_outcc; int t_oflag; } ;



 int CCLASS (int) ;
 int CEOT ;
 int CLR (int,int ) ;

 int EXTPROC ;
 int FLUSHO ;
 scalar_t__ ISSET (int ,int ) ;

 int OCRNL ;
 int ONLCR ;
 int ONOCR ;
 int ONOEOT ;
 int OPOST ;

 int OXTABS ;


 int TTY_CHARMASK ;
 int TTY_LOCK_OWNED (struct tty*) ;
 scalar_t__ b_to_q (int const*,int,int *) ;
 scalar_t__ putc (int,int *) ;
 scalar_t__ tk_nout ;

__attribute__((used)) static int
ttyoutput(int c, struct tty *tp)
{
 tcflag_t oflag;
 int col;

 TTY_LOCK_OWNED(tp);

 oflag = tp->t_oflag;
 if (!ISSET(oflag, OPOST)) {
  if (ISSET(tp->t_lflag, FLUSHO))
   return (-1);
  if (putc(c, &tp->t_outq))
   return (c);
  tk_nout++;
  tp->t_outcc++;
  return (-1);
 }






 CLR(c, ~TTY_CHARMASK);
 if (c == '\t' &&
     ISSET(oflag, OXTABS) && !ISSET(tp->t_lflag, EXTPROC)) {
  col = c = 8 - (tp->t_column & 7);
  if (!ISSET(tp->t_lflag, FLUSHO)) {
   c -= b_to_q((const u_char *)"        ", c, &tp->t_outq);
   tk_nout += c;
   tp->t_outcc += c;
  }
  tp->t_column += c;
  return (c == col ? -1 : '\t');
 }
 if (c == CEOT && ISSET(oflag, ONOEOT))
  return (-1);





 if (c == '\n' && ISSET(tp->t_oflag, ONLCR)) {
  tk_nout++;
  tp->t_outcc++;
  if (putc('\r', &tp->t_outq))
   return (c);
 }

        else if (c == '\r' && ISSET(tp->t_oflag, OCRNL))
                c = '\n';

        else if (c == '\r' && ISSET(tp->t_oflag, ONOCR) && tp->t_column == 0)
                return (-1);
 tk_nout++;
 tp->t_outcc++;
 if (!ISSET(tp->t_lflag, FLUSHO) && putc(c, &tp->t_outq))
  return (c);

 col = tp->t_column;
 switch (CCLASS(c)) {
 case 133:
  if (col > 0)
   --col;
  break;
 case 132:
  break;
 case 131:
 case 129:
  col = 0;
  break;
 case 130:
  ++col;
  break;
 case 128:
  col = (col + 8) & ~7;
  break;
 }
 tp->t_column = col;
 return (-1);
}
