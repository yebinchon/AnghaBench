
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstp_task {int bt_count; } ;


 int TAILQ_INSERT_TAIL (int *,struct bstp_task*,int ) ;
 int bstp_task_mtx ;
 int bstp_task_queue ;
 int bt_next ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int wakeup (int *) ;

__attribute__((used)) static void
bstp_task_enqueue(struct bstp_task *bt)
{
 lck_mtx_lock(bstp_task_mtx);

 if (bt->bt_count) {
  bt->bt_count++;
  lck_mtx_unlock(bstp_task_mtx);
  wakeup(&bstp_task_queue);
  return;
 }

 bt->bt_count = 1;
 TAILQ_INSERT_TAIL(&bstp_task_queue, bt, bt_next);

 lck_mtx_unlock(bstp_task_mtx);

 wakeup(&bstp_task_queue);
}
