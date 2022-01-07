
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* tcp_seq ;
struct tcpcb {int rcv_numsacks; void* rcv_nxt; int t_flags; scalar_t__ acc_iaj; struct sackblk* sackblks; } ;
struct sackblk {void* start; void* end; } ;


 int MAX_SACK_BLKS ;
 scalar_t__ SEQ_GEQ (void*,void*) ;
 scalar_t__ SEQ_GT (void*,void*) ;
 scalar_t__ SEQ_LEQ (void*,void*) ;
 scalar_t__ SEQ_LT (void*,void*) ;
 int TF_STRETCHACK ;
 int bcopy (struct sackblk*,struct sackblk*,int) ;
 int reset_acc_iaj (struct tcpcb*) ;
 int tcp_reset_stretch_ack (struct tcpcb*) ;

void
tcp_update_sack_list(struct tcpcb *tp, tcp_seq rcv_start, tcp_seq rcv_end)
{






 struct sackblk head_blk, saved_blks[MAX_SACK_BLKS];
 int num_head, num_saved, i;


 head_blk.start = rcv_start;
 head_blk.end = rcv_end;






 num_saved = 0;
 for (i = 0; i < tp->rcv_numsacks; i++) {
  tcp_seq start = tp->sackblks[i].start;
  tcp_seq end = tp->sackblks[i].end;
  if (SEQ_GEQ(start, end) || SEQ_LEQ(start, tp->rcv_nxt)) {



  } else if (SEQ_LEQ(head_blk.start, end) &&
      SEQ_GEQ(head_blk.end, start)) {




   if (SEQ_GT(head_blk.start, start))
    head_blk.start = start;
   if (SEQ_LT(head_blk.end, end))
    head_blk.end = end;
  } else {



   saved_blks[num_saved].start = start;
   saved_blks[num_saved].end = end;
   num_saved++;
  }
 }




 num_head = 0;
 if (SEQ_GT(head_blk.start, tp->rcv_nxt)) {




  tp->sackblks[0] = head_blk;
  num_head = 1;




  if (num_saved >= MAX_SACK_BLKS)
   num_saved--;
 }
 if (num_saved > 0) {



  bcopy(saved_blks, &tp->sackblks[num_head],
        sizeof(struct sackblk) * num_saved);
 }


 tp->rcv_numsacks = num_head + num_saved;





 if ((tp->t_flags & TF_STRETCHACK) != 0 && tp->rcv_numsacks > 0)
  tcp_reset_stretch_ack(tp);





}
