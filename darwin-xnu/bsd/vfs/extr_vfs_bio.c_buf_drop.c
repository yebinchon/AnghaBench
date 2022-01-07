
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* buf_t ;
struct TYPE_4__ {int b_tag; int b_lflags; int b_owner; } ;


 int BL_BUSY ;
 int BL_WANTED ;
 int CLR (int ,int) ;
 scalar_t__ ISSET (int ,int) ;
 int buf_busycount ;
 int buf_mtxp ;
 int current_thread () ;
 int lck_mtx_lock_spin (int ) ;
 int lck_mtx_unlock (int ) ;
 int wakeup (TYPE_1__*) ;

void
buf_drop(buf_t bp)
{
        int need_wakeup = 0;

 lck_mtx_lock_spin(buf_mtxp);

 if (ISSET(bp->b_lflags, BL_WANTED)) {




  need_wakeup = 1;
 }







 CLR(bp->b_lflags, (BL_BUSY | BL_WANTED));
 buf_busycount--;

 lck_mtx_unlock(buf_mtxp);

 if (need_wakeup) {



         wakeup(bp);
 }
}
