
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
struct bufhashhdr {int dummy; } ;
struct buf {int b_lflags; int b_flags; int b_tag; int b_owner; } ;
typedef scalar_t__ errno_t ;
typedef int daddr64_t ;
typedef int caddr_t ;
typedef struct buf* buf_t ;


 int BL_BUSY ;
 int BL_WANTED ;
 struct bufhashhdr* BUFHASH (int ,int ) ;
 int BUF_WAIT ;
 int B_INVAL ;
 scalar_t__ EBUSY ;
 scalar_t__ ISSET (int,int ) ;
 int PDROP ;
 int PRIBIO ;
 int SET (int,int ) ;
 int bremfree_locked (struct buf*) ;
 int buf_brelse (struct buf*) ;
 int buf_busycount ;
 int buf_mtxp ;
 int current_thread () ;
 struct buf* incore_locked (int ,int ,struct bufhashhdr*) ;
 int lck_mtx_lock_spin (int ) ;
 int lck_mtx_unlock (int ) ;
 scalar_t__ msleep (int ,int ,int,char*,int *) ;

errno_t
buf_invalblkno(vnode_t vp, daddr64_t lblkno, int flags)
{
        buf_t bp;
 errno_t error;
 struct bufhashhdr *dp;

 dp = BUFHASH(vp, lblkno);

relook:
 lck_mtx_lock_spin(buf_mtxp);

 if ((bp = incore_locked(vp, lblkno, dp)) == (struct buf *)0) {
         lck_mtx_unlock(buf_mtxp);
  return (0);
 }
 if (ISSET(bp->b_lflags, BL_BUSY)) {
         if ( !ISSET(flags, BUF_WAIT)) {
          lck_mtx_unlock(buf_mtxp);
   return (EBUSY);
  }
         SET(bp->b_lflags, BL_WANTED);

  error = msleep((caddr_t)bp, buf_mtxp, PDROP | (PRIBIO + 1), "buf_invalblkno", ((void*)0));

  if (error) {
   return (error);
  }
  goto relook;
 }
 bremfree_locked(bp);
 SET(bp->b_lflags, BL_BUSY);
 SET(bp->b_flags, B_INVAL);
 buf_busycount++;




 lck_mtx_unlock(buf_mtxp);
 buf_brelse(bp);

 return (0);
}
