
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* vnode_t ;
struct buflists {int dummy; } ;
typedef TYPE_3__* buf_t ;
struct TYPE_8__ {scalar_t__ le_next; } ;
struct TYPE_10__ {int b_flags; TYPE_1__ b_vnbufs; } ;
struct TYPE_9__ {struct buflists v_cleanblkhd; struct buflists v_dirtyblkhd; } ;


 int B_DELWRI ;
 scalar_t__ ISSET (int ,int ) ;
 scalar_t__ NOLIST ;
 int buf_mtxp ;
 int bufinsvn (TYPE_3__*,struct buflists*) ;
 int bufremvn (TYPE_3__*) ;
 int lck_mtx_lock_spin (int ) ;
 int lck_mtx_unlock (int ) ;
 int printf (char*) ;

__attribute__((used)) static void
buf_reassign(buf_t bp, vnode_t newvp)
{
 struct buflists *listheadp;

 if (newvp == ((void*)0)) {
  printf("buf_reassign: NULL");
  return;
 }
 lck_mtx_lock_spin(buf_mtxp);




 if (bp->b_vnbufs.le_next != NOLIST)
  bufremvn(bp);




 if (ISSET(bp->b_flags, B_DELWRI))
  listheadp = &newvp->v_dirtyblkhd;
 else
  listheadp = &newvp->v_cleanblkhd;
 bufinsvn(bp, listheadp);

 lck_mtx_unlock(buf_mtxp);
}
