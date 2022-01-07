
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ c_cc; } ;
struct tty {size_t t_line; int t_state; TYPE_1__ t_outq; int t_dev; } ;
typedef int buf ;
struct TYPE_5__ {int (* l_start ) (struct tty*) ;} ;


 int TS_BUSY ;
 int cnputsusr (char*,int) ;
 int hz ;
 int kmputc (int ,unsigned char) ;
 int kmtimeout ;
 TYPE_3__* linesw ;
 int min (int,int) ;
 int ndqb (TYPE_1__*,int ) ;
 int q_to_b (TYPE_1__*,unsigned char*,int) ;
 int stub1 (struct tty*) ;
 int timeout (int ,struct tty*,int ) ;

__attribute__((used)) static int
kmoutput(struct tty * tp)
{
 unsigned char buf[80];
 unsigned char *cp;
 int cc = -1;


 while (tp->t_outq.c_cc > 0) {
  cc = ndqb(&tp->t_outq, 0);
  if (cc == 0)
   break;




  cc = min(cc, sizeof(buf));

  (void) q_to_b(&tp->t_outq, buf, cc);
  for (cp = buf; cp < &buf[cc]; cp++) {

   *cp = *cp & 0x7f;
  }
  if (cc > 1) {
   cnputsusr((char *)buf, cc);
  } else {
   kmputc(tp->t_dev, *buf);
  }
 }




 if (tp->t_outq.c_cc > 0) {
  timeout(kmtimeout, tp, hz);
 }
 tp->t_state &= ~TS_BUSY;

 (*linesw[tp->t_line].l_start) (tp);

 return 0;
}
