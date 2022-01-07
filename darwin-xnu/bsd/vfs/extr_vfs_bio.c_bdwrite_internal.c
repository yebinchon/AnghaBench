
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vnode_t ;
typedef TYPE_3__* proc_t ;
typedef TYPE_4__* buf_t ;
struct TYPE_13__ {int b_flags; int b_vp; } ;
struct TYPE_12__ {TYPE_2__* p_stats; } ;
struct TYPE_10__ {int ru_oublock; } ;
struct TYPE_11__ {TYPE_1__ p_ru; } ;


 int B_DELWRI ;
 int B_DONE ;
 int B_LOCKED ;
 int EAGAIN ;
 int ISSET (int ,int ) ;
 int OSAddAtomicLong (int,int*) ;
 int OSIncrementAtomicLong (int *) ;
 int SET (int ,int ) ;
 int VNODE_ASYNC_THROTTLE ;
 int buf_bawrite (TYPE_4__*) ;
 int buf_brelse (TYPE_4__*) ;
 int buf_reassign (TYPE_4__*,int ) ;
 TYPE_3__* current_proc () ;
 int nbdwrite ;
 int nbuf_headers ;
 int vnode_waitforwrites (int ,int ,int ,int ,char*) ;

int
bdwrite_internal(buf_t bp, int return_error)
{
 proc_t p = current_proc();
 vnode_t vp = bp->b_vp;







 if (!ISSET(bp->b_flags, B_DELWRI)) {
  SET(bp->b_flags, B_DELWRI);
  if (p && p->p_stats) {
   OSIncrementAtomicLong(&p->p_stats->p_ru.ru_oublock);
  }
  OSAddAtomicLong(1, &nbdwrite);
  buf_reassign(bp, vp);
 }
 if (!ISSET(bp->b_flags, B_LOCKED) && nbdwrite > ((nbuf_headers/4)*3)) {
  if (return_error)
   return (EAGAIN);




  (void)vnode_waitforwrites(vp, VNODE_ASYNC_THROTTLE, 0, 0, "buf_bdwrite");

  return (buf_bawrite(bp));
 }


 SET(bp->b_flags, B_DONE);
 buf_brelse(bp);
 return (0);
}
