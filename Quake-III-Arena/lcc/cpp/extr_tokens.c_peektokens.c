
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* tp; TYPE_2__* bp; TYPE_2__* lp; } ;
typedef TYPE_1__ Tokenrow ;
struct TYPE_5__ {int* t; size_t len; int type; int hideset; } ;
typedef TYPE_2__ Token ;


 int NAME ;
 int NL ;
 int fflush (int ) ;
 int flushout () ;
 int fprintf (int ,char*,...) ;
 int prhideset (int ) ;
 int stderr ;

void
peektokens(Tokenrow *trp, char *str)
{
 Token *tp;

 tp = trp->tp;
 flushout();
 if (str)
  fprintf(stderr, "%s ", str);
 if (tp<trp->bp || tp>trp->lp)
  fprintf(stderr, "(tp offset %d) ", tp-trp->bp);
 for (tp=trp->bp; tp<trp->lp && tp<trp->bp+32; tp++) {
  if (tp->type!=NL) {
   int c = tp->t[tp->len];
   tp->t[tp->len] = 0;
   fprintf(stderr, "%s", tp->t);
   tp->t[tp->len] = c;
  }
  if (tp->type==NAME) {
   fprintf(stderr, tp==trp->tp?"{*":"{");
   prhideset(tp->hideset);
   fprintf(stderr, "} ");
  } else
   fprintf(stderr, tp==trp->tp?"{%x*} ":"{%x} ", tp->type);
 }
 fprintf(stderr, "\n");
 fflush(stderr);
}
