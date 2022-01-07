
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct bqueues {int ** tqh_last; } ;
typedef TYPE_2__* buf_t ;
struct TYPE_5__ {int * tqe_next; } ;
struct TYPE_6__ {int b_whichq; scalar_t__ b_shadow_ref; scalar_t__ b_shadow; scalar_t__ b_timestamp; TYPE_1__ b_freelist; } ;


 int BQ_LAUNDRY ;
 int TAILQ_REMOVE (struct bqueues*,TYPE_2__*,int ) ;
 int b_freelist ;
 int blaundrycnt ;
 struct bqueues* bufqueues ;
 int panic (char*,...) ;

__attribute__((used)) static void
bremfree_locked(buf_t bp)
{
 struct bqueues *dp = ((void*)0);
 int whichq;

 whichq = bp->b_whichq;

 if (whichq == -1) {
  if (bp->b_shadow_ref == 0)
   panic("bremfree_locked: %p not on freelist", bp);





  return;
 }







 if (bp->b_freelist.tqe_next == ((void*)0)) {
         dp = &bufqueues[whichq];

  if (dp->tqh_last != &bp->b_freelist.tqe_next)
   panic("bremfree: lost tail");
 }
 TAILQ_REMOVE(dp, bp, b_freelist);

 if (whichq == BQ_LAUNDRY)
         blaundrycnt--;

 bp->b_whichq = -1;
 bp->b_timestamp = 0;
 bp->b_shadow = 0;
}
