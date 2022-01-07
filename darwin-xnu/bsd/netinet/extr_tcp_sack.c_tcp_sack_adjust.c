
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int snd_fack; int snd_nxt; int snd_holes; } ;
struct sackhole {int end; int start; } ;


 scalar_t__ SEQ_GEQ (int ,int ) ;
 scalar_t__ SEQ_LT (int ,int ) ;
 struct sackhole* TAILQ_FIRST (int *) ;
 struct sackhole* TAILQ_NEXT (struct sackhole*,int ) ;
 int scblink ;

void
tcp_sack_adjust(struct tcpcb *tp)
{
 struct sackhole *p, *cur = TAILQ_FIRST(&tp->snd_holes);

 if (cur == ((void*)0))
  return;
 if (SEQ_GEQ(tp->snd_nxt, tp->snd_fack))
  return;





 while ((p = TAILQ_NEXT(cur, scblink)) != ((void*)0)) {
  if (SEQ_LT(tp->snd_nxt, cur->end))
   return;
  if (SEQ_GEQ(tp->snd_nxt, p->start))
   cur = p;
  else {
   tp->snd_nxt = p->start;
   return;
  }
 }
 if (SEQ_LT(tp->snd_nxt, cur->end))
  return;
 tp->snd_nxt = tp->snd_fack;
 return;
}
