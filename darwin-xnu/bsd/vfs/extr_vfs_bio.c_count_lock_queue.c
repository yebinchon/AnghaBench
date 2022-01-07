
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* buf_t ;
struct TYPE_6__ {TYPE_2__* tqh_first; } ;
struct TYPE_4__ {TYPE_2__* tqe_next; } ;
struct TYPE_5__ {TYPE_1__ b_freelist; } ;


 size_t BQ_LOCKED ;
 int buf_mtxp ;
 TYPE_3__* bufqueues ;
 int lck_mtx_lock_spin (int ) ;
 int lck_mtx_unlock (int ) ;

int
count_lock_queue(void)
{
 buf_t bp;
 int n = 0;

 lck_mtx_lock_spin(buf_mtxp);

 for (bp = bufqueues[BQ_LOCKED].tqh_first; bp;
     bp = bp->b_freelist.tqe_next)
  n++;
 lck_mtx_unlock(buf_mtxp);

 return (n);
}
