
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int c_cc; } ;
struct tty {scalar_t__* t_cc; scalar_t__ t_rocol; TYPE_1__ t_rawq; int t_rocount; int t_state; TYPE_1__ t_canq; } ;


 int CLR (int ,int ) ;
 int TS_ERASE ;
 int TTY_LOCK_OWNED (struct tty*) ;
 size_t VREPRINT ;
 scalar_t__ _POSIX_VDISABLE ;
 int * firstc (TYPE_1__*,int*) ;
 int * nextc (TYPE_1__*,int *,int*) ;
 int ttyecho (int,struct tty*) ;
 int ttyoutput (char,struct tty*) ;

__attribute__((used)) static void
ttyretype(struct tty *tp)
{
 u_char *cp;
 int c;

 TTY_LOCK_OWNED(tp);


 if (tp->t_cc[VREPRINT] != _POSIX_VDISABLE)
  ttyecho(tp->t_cc[VREPRINT], tp);

 (void)ttyoutput('\n', tp);






 for (cp = firstc(&tp->t_canq, &c); cp; cp = nextc(&tp->t_canq, cp, &c))
  ttyecho(c, tp);
 for (cp = firstc(&tp->t_rawq, &c); cp; cp = nextc(&tp->t_rawq, cp, &c))
  ttyecho(c, tp);
 CLR(tp->t_state, TS_ERASE);

 tp->t_rocount = tp->t_rawq.c_cc;
 tp->t_rocol = 0;
}
