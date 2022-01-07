
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vnode_t ;
struct bufhashhdr {struct buf* lh_first; } ;
struct TYPE_2__ {struct buf* le_next; } ;
struct buf {scalar_t__ b_lblkno; scalar_t__ b_vp; int b_flags; TYPE_1__ b_hash; } ;
typedef scalar_t__ daddr64_t ;
typedef struct buf* buf_t ;


 int B_INVAL ;
 int ISSET (int ,int ) ;

__attribute__((used)) static buf_t
incore_locked(vnode_t vp, daddr64_t blkno, struct bufhashhdr *dp)
{
 struct buf *bp;


 for (bp = dp->lh_first; bp != ((void*)0); bp = bp->b_hash.le_next) {
  if (bp->b_lblkno == blkno && bp->b_vp == vp &&
      !ISSET(bp->b_flags, B_INVAL)) {
   return (bp);
  }
 }
 return (((void*)0));
}
