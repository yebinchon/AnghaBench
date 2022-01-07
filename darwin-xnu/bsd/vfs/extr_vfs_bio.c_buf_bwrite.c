
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef TYPE_3__* vnode_t ;
typedef TYPE_4__* proc_t ;
typedef int errno_t ;
typedef TYPE_5__* buf_t ;
struct TYPE_19__ {scalar_t__ b_datap; int b_lblkno; int b_bcount; int b_flags; TYPE_3__* b_vp; } ;
struct TYPE_18__ {TYPE_2__* p_stats; } ;
struct TYPE_17__ {int v_numoutput; } ;
struct TYPE_15__ {int ru_oublock; } ;
struct TYPE_16__ {TYPE_1__ p_ru; } ;


 int B_ASYNC ;
 int B_DELWRI ;
 int B_DONE ;
 int B_ERROR ;
 int B_READ ;
 int CLR (int ,int) ;
 int ISSET (int ,int) ;
 int OSAddAtomic (int,int *) ;
 int OSAddAtomicLong (int,int *) ;
 int OSIncrementAtomicLong (int *) ;
 int TR_BUFWRITE ;
 int VNOP_STRATEGY (TYPE_5__*) ;
 scalar_t__ brecover_data (TYPE_5__*) ;
 int buf_biowait (TYPE_5__*) ;
 int buf_brelse (TYPE_5__*) ;
 int buf_reassign (TYPE_5__*,TYPE_3__*) ;
 TYPE_4__* current_proc () ;
 int nbdwrite ;
 int pack (TYPE_3__*,int ) ;
 int trace (int ,int ,int ) ;

errno_t
buf_bwrite(buf_t bp)
{
 int sync, wasdelayed;
 errno_t rv;
 proc_t p = current_proc();
 vnode_t vp = bp->b_vp;

 if (bp->b_datap == 0) {
         if (brecover_data(bp) == 0)
          return (0);
 }

 sync = !ISSET(bp->b_flags, B_ASYNC);
 wasdelayed = ISSET(bp->b_flags, B_DELWRI);
 CLR(bp->b_flags, (B_READ | B_DONE | B_ERROR | B_DELWRI));

 if (wasdelayed)
  OSAddAtomicLong(-1, &nbdwrite);

 if (!sync) {






  if (wasdelayed)
   buf_reassign(bp, vp);
  else
   if (p && p->p_stats) {
    OSIncrementAtomicLong(&p->p_stats->p_ru.ru_oublock);
   }
 }
 trace(TR_BUFWRITE, pack(vp, bp->b_bcount), bp->b_lblkno);



        OSAddAtomic(1, &vp->v_numoutput);

 VNOP_STRATEGY(bp);

 if (sync) {



  rv = buf_biowait(bp);






  if (wasdelayed)
   buf_reassign(bp, vp);
  else
   if (p && p->p_stats) {
    OSIncrementAtomicLong(&p->p_stats->p_ru.ru_oublock);
   }


  buf_brelse(bp);

  return (rv);
 } else {
  return (0);
 }
}
