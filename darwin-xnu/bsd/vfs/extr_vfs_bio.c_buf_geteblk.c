
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* buf_t ;
struct TYPE_8__ {int bufs_eblk; } ;
struct TYPE_7__ {int b_flags; } ;


 int BQ_EMPTY ;
 int B_INVAL ;
 int B_META ;
 int SET (int ,int) ;
 int allocbuf (TYPE_1__*,int) ;
 int assert (int) ;
 int binshash (TYPE_1__*,int *) ;
 int buf_mtxp ;
 TYPE_3__ bufstats ;
 TYPE_1__* getnewbuf (int ,int ,int*) ;
 int invalhash ;
 int lck_mtx_lock_spin (int ) ;
 int lck_mtx_unlock (int ) ;

buf_t
buf_geteblk(int size)
{
 buf_t bp = ((void*)0);
 int queue = BQ_EMPTY;

 do {
  lck_mtx_lock_spin(buf_mtxp);

  bp = getnewbuf(0, 0, &queue);
 } while (bp == ((void*)0));

 SET(bp->b_flags, (B_META|B_INVAL));






 binshash(bp, &invalhash);
 bufstats.bufs_eblk++;

 lck_mtx_unlock(buf_mtxp);

 allocbuf(bp, size);

 return (bp);
}
