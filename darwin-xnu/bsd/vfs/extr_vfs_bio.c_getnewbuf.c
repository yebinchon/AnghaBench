
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timespec {int tv_sec; int tv_nsec; } ;
struct buf {int b_whichq; int b_timestamp; int b_flags; int b_lflags; } ;
typedef struct buf* buf_t ;
struct TYPE_5__ {struct buf* tqh_first; } ;
struct TYPE_4__ {int bufs_sleeps; } ;


 int BLISTNONE (struct buf*) ;
 int BL_BUSY ;
 int BQUEUES ;
 size_t BQ_AGE ;
 int BQ_EMPTY ;
 int BQ_LAUNDRY ;
 int BQ_LOCKED ;
 size_t BQ_LRU ;
 size_t BQ_META ;
 int B_HDRALLOC ;
 int B_LOCKED ;
 int FALSE ;
 scalar_t__ ISSET (int ,int ) ;
 int NSEC_PER_USEC ;
 int PDROP ;
 int PRIBIO ;
 int SET (int ,int ) ;
 int age_is_stale ;
 scalar_t__ bcleanbuf (struct buf*,int ) ;
 int binshash (struct buf*,int *) ;
 int binsheadfree (struct buf*,TYPE_2__*,int) ;
 int buf_hdr_count ;
 int buf_hdr_zone ;
 int buf_mtxp ;
 void* buf_timestamp () ;
 int bufhdrinit (struct buf*) ;
 TYPE_2__* bufqueues ;
 TYPE_1__ bufstats ;
 int invalhash ;
 int lck_mtx_lock_spin (int ) ;
 int lck_mtx_unlock (int ) ;
 int lru_is_stale ;
 scalar_t__ max_nbuf_headers ;
 int meta_is_stale ;
 int msleep (int*,int ,int,char*,struct timespec*) ;
 scalar_t__ nbuf_headers ;
 int needbuffer ;
 int panic (char*,struct buf*,int ) ;
 scalar_t__ zalloc (int ) ;

__attribute__((used)) static buf_t
getnewbuf(int slpflag, int slptimeo, int * queue)
{
 buf_t bp;
 buf_t lru_bp;
 buf_t age_bp;
 buf_t meta_bp;
 int age_time, lru_time, bp_time, meta_time;
 int req = *queue;
 struct timespec ts;

start:



 if ((*queue >= BQUEUES) || (*queue < 0)
  || (*queue == BQ_LAUNDRY) || (*queue == BQ_LOCKED))
  *queue = BQ_EMPTY;


 if (*queue == BQ_EMPTY && (bp = bufqueues[*queue].tqh_first))
         goto found;




 if (nbuf_headers < max_nbuf_headers) {





  nbuf_headers++;
  goto add_newbufs;
 }

 bp = bufqueues[*queue].tqh_first;
 if (bp)
         goto found;


 age_bp = bufqueues[BQ_AGE].tqh_first;
 lru_bp = bufqueues[BQ_LRU].tqh_first;
 meta_bp = bufqueues[BQ_META].tqh_first;

 if (!age_bp && !lru_bp && !meta_bp) {




  bp = bufqueues[BQ_EMPTY].tqh_first;
  if (bp) {
   *queue = BQ_EMPTY;
   goto found;
  }






add_newbufs:
  lck_mtx_unlock(buf_mtxp);


  bp = (struct buf *)zalloc(buf_hdr_zone);

  if (bp) {
   bufhdrinit(bp);
   bp->b_whichq = BQ_EMPTY;
   bp->b_timestamp = buf_timestamp();
   BLISTNONE(bp);
   SET(bp->b_flags, B_HDRALLOC);
   *queue = BQ_EMPTY;
  }
  lck_mtx_lock_spin(buf_mtxp);

  if (bp) {
   binshash(bp, &invalhash);
   binsheadfree(bp, &bufqueues[BQ_EMPTY], BQ_EMPTY);
   buf_hdr_count++;
   goto found;
  }

  nbuf_headers--;

  bufstats.bufs_sleeps++;


  needbuffer = 1;

  ts.tv_sec = (slptimeo/1000);

  ts.tv_nsec = (slptimeo % 1000) * NSEC_PER_USEC * 1000 * 10;

  msleep(&needbuffer, buf_mtxp, slpflag | PDROP | (PRIBIO+1), "getnewbuf", &ts);
  return (((void*)0));
 }


 bp = ((void*)0);
 *queue = -1;


 if (!age_bp) {
  bp = lru_bp;
  *queue = BQ_LRU;
 } else if (!lru_bp) {
  bp = age_bp;
  *queue = BQ_AGE;
 } else {
  int t = buf_timestamp();

  age_time = t - age_bp->b_timestamp;
  lru_time = t - lru_bp->b_timestamp;
  if ((age_time < 0) || (lru_time < 0)) {
   bp = age_bp;
   *queue = BQ_AGE;




  } else {
   if ((lru_time >= lru_is_stale) && (age_time < age_is_stale)) {
    bp = lru_bp;
    *queue = BQ_LRU;
   } else {
    bp = age_bp;
    *queue = BQ_AGE;
   }
  }
 }

 if (!bp) {
  bp = meta_bp;
  *queue = BQ_META;
 } else if (meta_bp) {
  int t = buf_timestamp();

  bp_time = t - bp->b_timestamp;
  meta_time = t - meta_bp->b_timestamp;

  if (!(bp_time < 0) && !(meta_time < 0)) {

   int bp_is_stale;
   bp_is_stale = (*queue == BQ_LRU) ?
     lru_is_stale : age_is_stale;

   if ((meta_time >= meta_is_stale) &&
     (bp_time < bp_is_stale)) {
    bp = meta_bp;
    *queue = BQ_META;
   }
  }
 }
found:
 if (ISSET(bp->b_flags, B_LOCKED) || ISSET(bp->b_lflags, BL_BUSY))
         panic("getnewbuf: bp @ %p is LOCKED or BUSY! (flags 0x%x)\n", bp, bp->b_flags);


 if (bcleanbuf(bp, FALSE)) {



  *queue = req;
  goto start;
 }
 return (bp);
}
