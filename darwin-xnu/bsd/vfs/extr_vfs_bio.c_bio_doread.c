
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vnode_t ;
struct proc {TYPE_2__* p_stats; } ;
struct buf {int b_rcred; int b_flags; } ;
typedef int kauth_cred_t ;
typedef int daddr64_t ;
typedef struct buf* buf_t ;
struct TYPE_3__ {int ru_inblock; } ;
struct TYPE_4__ {TYPE_1__ p_ru; } ;


 int B_DELWRI ;
 int B_DONE ;
 int B_READ ;
 int ISSET (int ,int) ;
 scalar_t__ IS_VALID_CRED (int ) ;
 int OSIncrementAtomicLong (int *) ;
 int SET (int ,int) ;
 int TR_BREADHIT ;
 int TR_BREADMISS ;
 int VNOP_STRATEGY (struct buf*) ;
 int buf_brelse (struct buf*) ;
 struct buf* buf_getblk (int ,int ,int,int ,int ,int) ;
 struct proc* current_proc () ;
 int kauth_cred_ref (int ) ;
 int pack (int ,int) ;
 int trace (int ,int ,int ) ;

__attribute__((used)) static struct buf *
bio_doread(vnode_t vp, daddr64_t blkno, int size, kauth_cred_t cred, int async, int queuetype)
{
 buf_t bp;

 bp = buf_getblk(vp, blkno, size, 0, 0, queuetype);






 if (!ISSET(bp->b_flags, (B_DONE | B_DELWRI))) {
  struct proc *p;

  p = current_proc();


  SET(bp->b_flags, B_READ | async);
  if (IS_VALID_CRED(cred) && !IS_VALID_CRED(bp->b_rcred)) {
   kauth_cred_ref(cred);
   bp->b_rcred = cred;
  }

  VNOP_STRATEGY(bp);

  trace(TR_BREADMISS, pack(vp, size), blkno);


  if (p && p->p_stats) {
   OSIncrementAtomicLong(&p->p_stats->p_ru.ru_inblock);
  }

  if (async) {






          bp = ((void*)0);
  }
 } else if (async) {
  buf_brelse(bp);
  bp = ((void*)0);
 }

 trace(TR_BREADHIT, pack(vp, size), blkno);

 return (bp);
}
