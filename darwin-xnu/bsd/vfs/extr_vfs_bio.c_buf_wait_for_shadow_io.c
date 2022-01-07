
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vnode_t ;
struct bufhashhdr {int dummy; } ;
typedef int daddr64_t ;
typedef TYPE_1__* buf_t ;
struct TYPE_4__ {scalar_t__ b_shadow_ref; int b_lflags; } ;


 int BL_WANTED_REF ;
 struct bufhashhdr* BUFHASH (int ,int ) ;
 int PRIBIO ;
 int PSPIN ;
 int SET (int ,int ) ;
 int buf_mtxp ;
 TYPE_1__* incore_locked (int ,int ,struct bufhashhdr*) ;
 int lck_mtx_lock_spin (int ) ;
 int lck_mtx_unlock (int ) ;
 int msleep (TYPE_1__*,int ,int,char*,int *) ;

void
buf_wait_for_shadow_io(vnode_t vp, daddr64_t blkno)
{
 buf_t bp;
 struct bufhashhdr *dp;

 dp = BUFHASH(vp, blkno);

 lck_mtx_lock_spin(buf_mtxp);

 for (;;) {
  if ((bp = incore_locked(vp, blkno, dp)) == ((void*)0))
   break;

  if (bp->b_shadow_ref == 0)
   break;

  SET(bp->b_lflags, BL_WANTED_REF);

  (void) msleep(bp, buf_mtxp, PSPIN | (PRIBIO+1), "buf_wait_for_shadow", ((void*)0));
 }
 lck_mtx_unlock(buf_mtxp);
}
