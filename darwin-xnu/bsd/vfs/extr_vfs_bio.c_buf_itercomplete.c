
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct buflists {int dummy; } ;
typedef int buf_t ;
struct TYPE_3__ {int v_iterblkflags; struct buflists v_cleanblkhd; struct buflists v_dirtyblkhd; } ;


 int LIST_EMPTY (struct buflists*) ;
 int LIST_FIRST (struct buflists*) ;
 int LIST_INSERT_HEAD (struct buflists*,int ,int ) ;
 int LIST_REMOVE (int ,int ) ;
 int VBI_DIRTY ;
 int VBI_ITER ;
 int VBI_ITERWANT ;
 int b_vnbufs ;
 int wakeup (int*) ;

__attribute__((used)) static void
buf_itercomplete(vnode_t vp, struct buflists *iterheadp, int flags)
{
 struct buflists * listheadp;
 buf_t bp;

 if (flags & VBI_DIRTY)
  listheadp = &vp->v_dirtyblkhd;
 else
  listheadp = &vp->v_cleanblkhd;

 while (!LIST_EMPTY(iterheadp)) {
  bp = LIST_FIRST(iterheadp);
  LIST_REMOVE(bp, b_vnbufs);
  LIST_INSERT_HEAD(listheadp, bp, b_vnbufs);
 }
 vp->v_iterblkflags &= ~VBI_ITER;

 if (vp->v_iterblkflags & VBI_ITERWANT) {
  vp->v_iterblkflags &= ~VBI_ITERWANT;
  wakeup(&vp->v_iterblkflags);
 }
}
