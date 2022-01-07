
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ c_cc; } ;
struct tty {int t_state; TYPE_1__ t_outq; int t_timeout; int (* t_oproc ) (struct tty*) ;} ;


 int EIO ;
 int EWOULDBLOCK ;
 scalar_t__ ISSET (int ,int ) ;
 int PCATCH ;
 int SET (int ,int ) ;
 int TSA_OCOMPLETE (struct tty*) ;
 int TS_BUSY ;
 int TS_CONNECTED ;
 int TS_SO_OCOMPLETE ;
 int TTOPRI ;
 int TTY_LOCK_OWNED (struct tty*) ;
 int stub1 (struct tty*) ;
 int ttysleep (struct tty*,int ,int,char*,int ) ;

int
ttywait(struct tty *tp)
{
 int error;

 TTY_LOCK_OWNED(tp);

 error = 0;
 while ((tp->t_outq.c_cc || ISSET(tp->t_state, TS_BUSY)) &&
        ISSET(tp->t_state, TS_CONNECTED) && tp->t_oproc) {
  (*tp->t_oproc)(tp);
  if ((tp->t_outq.c_cc || ISSET(tp->t_state, TS_BUSY)) &&
      ISSET(tp->t_state, TS_CONNECTED)) {
   SET(tp->t_state, TS_SO_OCOMPLETE);
   error = ttysleep(tp, TSA_OCOMPLETE(tp),
      TTOPRI | PCATCH, "ttywai",
      tp->t_timeout);
   if (error) {
    if (error == EWOULDBLOCK)
     error = EIO;
    break;
   }
  } else
   break;
 }
 if (!error && (tp->t_outq.c_cc || ISSET(tp->t_state, TS_BUSY)))
  error = EIO;
 return (error);
}
