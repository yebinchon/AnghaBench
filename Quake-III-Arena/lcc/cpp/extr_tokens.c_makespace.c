
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char uchar ;
struct TYPE_4__ {scalar_t__ tp; scalar_t__ bp; TYPE_2__* lp; } ;
typedef TYPE_1__ Tokenrow ;
struct TYPE_5__ {int wslen; int flag; size_t type; char* t; int len; } ;
typedef TYPE_2__ Token ;


 int XPWS ;
 char* newstring (char*,int ,int) ;
 scalar_t__* wstab ;

void
makespace(Tokenrow *trp)
{
 uchar *tt;
 Token *tp = trp->tp;

 if (tp >= trp->lp)
  return;
 if (tp->wslen) {
  if (tp->flag&XPWS
   && (wstab[tp->type] || trp->tp>trp->bp && wstab[(tp-1)->type])) {
   tp->wslen = 0;
   return;
  }
  tp->t[-1] = ' ';
  return;
 }
 if (wstab[tp->type] || trp->tp>trp->bp && wstab[(tp-1)->type])
  return;
 tt = newstring(tp->t, tp->len, 1);
 *tt++ = ' ';
 tp->t = tt;
 tp->wslen = 1;
 tp->flag |= XPWS;
}
