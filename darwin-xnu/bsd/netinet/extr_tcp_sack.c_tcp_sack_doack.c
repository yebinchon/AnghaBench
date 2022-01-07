
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
typedef void* tcp_seq ;
struct tcpopt {int to_nsacks; scalar_t__ to_sacks; } ;
struct tcphdr {void* th_ack; } ;
struct TYPE_2__ {int sack_bytes_rexmit; } ;
struct tcpcb {TYPE_1__ sackhint; int snd_holes; void* snd_fack; void* snd_una; } ;
struct sackhole {void* start; void* rxmit; int rxmit_start; void* end; } ;
struct sackblk {void* start; void* end; } ;
typedef int sack ;


 scalar_t__ SEQ_GEQ (void*,void*) ;
 scalar_t__ SEQ_GT (void*,void*) ;
 scalar_t__ SEQ_LEQ (void*,void*) ;
 scalar_t__ SEQ_LT (void*,void*) ;
 void* SEQ_MAX (void*,void*) ;
 void* SEQ_MIN (void*,void*) ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 struct sackhole* TAILQ_LAST (int *,int ) ;
 struct sackhole* TAILQ_PREV (struct sackhole*,int ,int ) ;
 int TCPOLEN_SACK ;
 int TCP_MAX_SACK ;
 scalar_t__ TCP_VALIDATE_SACK_SEQ_NUMBERS (struct tcpcb*,struct sackblk*,void*) ;
 int VERIFY (int) ;
 int bcopy (scalar_t__,struct sackblk*,int) ;
 void* ntohl (void*) ;
 int sackhole_head ;
 int scblink ;
 int tcp_sack_detect_reordering (struct tcpcb*,struct sackhole*,void*,void*) ;
 struct sackhole* tcp_sackhole_insert (struct tcpcb*,void*,void*,struct sackhole*) ;
 int tcp_sackhole_remove (struct tcpcb*,struct sackhole*) ;

void
tcp_sack_doack(struct tcpcb *tp, struct tcpopt *to, struct tcphdr *th,
 u_int32_t *newbytes_acked)
{
 struct sackhole *cur, *temp;
 struct sackblk sack, sack_blocks[TCP_MAX_SACK + 1], *sblkp;
 int i, j, num_sack_blks;
 tcp_seq old_snd_fack = 0, th_ack = th->th_ack;

 num_sack_blks = 0;




 if (SEQ_LT(tp->snd_una, th_ack) && !TAILQ_EMPTY(&tp->snd_holes)) {
  sack_blocks[num_sack_blks].start = tp->snd_una;
  sack_blocks[num_sack_blks++].end = th_ack;
 }




 for (i = 0; i < to->to_nsacks; i++) {
  bcopy((to->to_sacks + i * TCPOLEN_SACK),
      &sack, sizeof(sack));
  sack.start = ntohl(sack.start);
  sack.end = ntohl(sack.end);
  if (TCP_VALIDATE_SACK_SEQ_NUMBERS(tp, &sack, th_ack))
   sack_blocks[num_sack_blks++] = sack;
 }





 if (num_sack_blks == 0)
  return;

 VERIFY(num_sack_blks <= (TCP_MAX_SACK + 1));





 for (i = 0; i < num_sack_blks; i++) {
  for (j = i + 1; j < num_sack_blks; j++) {
   if (SEQ_GT(sack_blocks[i].end, sack_blocks[j].end)) {
    sack = sack_blocks[i];
    sack_blocks[i] = sack_blocks[j];
    sack_blocks[j] = sack;
   }
  }
 }
 if (TAILQ_EMPTY(&tp->snd_holes)) {






  tp->snd_fack = SEQ_MAX(tp->snd_una, th_ack);
  *newbytes_acked += (tp->snd_fack - tp->snd_una);
 }

 old_snd_fack = tp->snd_fack;
 sblkp = &sack_blocks[num_sack_blks - 1];
 if (SEQ_LT(tp->snd_fack, sblkp->start)) {







  temp = tcp_sackhole_insert(tp, tp->snd_fack,sblkp->start,((void*)0));
  if (temp != ((void*)0)) {
   tp->snd_fack = sblkp->end;
   *newbytes_acked += (sblkp->end - sblkp->start);


   sblkp--;
  } else {
   while (sblkp >= sack_blocks &&
          SEQ_LT(tp->snd_fack, sblkp->start))
    sblkp--;
   if (sblkp >= sack_blocks &&
       SEQ_LT(tp->snd_fack, sblkp->end)) {
    *newbytes_acked += (sblkp->end - tp->snd_fack);
    tp->snd_fack = sblkp->end;
   }
  }
 } else if (SEQ_LT(tp->snd_fack, sblkp->end)) {

  *newbytes_acked += (sblkp->end - tp->snd_fack);
  tp->snd_fack = sblkp->end;
 }

 cur = TAILQ_LAST(&tp->snd_holes, sackhole_head);




 while (sblkp >= sack_blocks && cur != ((void*)0)) {
  if (SEQ_GEQ(sblkp->start, cur->end)) {




   sblkp--;
   continue;
  }
  if (SEQ_LEQ(sblkp->end, cur->start)) {




   cur = TAILQ_PREV(cur, sackhole_head, scblink);
   continue;
  }
  tp->sackhint.sack_bytes_rexmit -= (cur->rxmit - cur->start);
  if (SEQ_LEQ(sblkp->start, cur->start)) {

   if (SEQ_GEQ(sblkp->end, cur->end)) {

    *newbytes_acked += (cur->end - cur->start);

    tcp_sack_detect_reordering(tp, cur,
        cur->end, old_snd_fack);
    temp = cur;
    cur = TAILQ_PREV(cur, sackhole_head, scblink);
    tcp_sackhole_remove(tp, temp);




    continue;
   } else {

    *newbytes_acked += (sblkp->end - cur->start);
    tcp_sack_detect_reordering(tp, cur,
        sblkp->end, old_snd_fack);
    cur->start = sblkp->end;
    cur->rxmit = SEQ_MAX(cur->rxmit, cur->start);
   }
  } else {

   if (SEQ_GEQ(sblkp->end, cur->end)) {

    *newbytes_acked += (cur->end - sblkp->start);
    tcp_sack_detect_reordering(tp, cur,
        cur->end, old_snd_fack);
    cur->end = sblkp->start;
    cur->rxmit = SEQ_MIN(cur->rxmit, cur->end);
   } else {




    *newbytes_acked += (sblkp->end - sblkp->start);
    tcp_sack_detect_reordering(tp, cur,
        sblkp->end, old_snd_fack);
    temp = tcp_sackhole_insert(tp, sblkp->end,
        cur->end, cur);
    if (temp != ((void*)0)) {
     if (SEQ_GT(cur->rxmit, temp->rxmit)) {
      temp->rxmit = cur->rxmit;
      tp->sackhint.sack_bytes_rexmit
       += (temp->rxmit
           - temp->start);
     }
     cur->end = sblkp->start;
     cur->rxmit = SEQ_MIN(cur->rxmit,
            cur->end);






     temp->rxmit_start = cur->rxmit_start;
    }
   }
  }
  tp->sackhint.sack_bytes_rexmit += (cur->rxmit - cur->start);





  if (SEQ_LEQ(sblkp->start, cur->start))
   cur = TAILQ_PREV(cur, sackhole_head, scblink);
  else
   sblkp--;
 }
}
