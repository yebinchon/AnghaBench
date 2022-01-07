
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstp_task {scalar_t__ bt_count; } ;


 int PZERO ;
 int bstp_task_mtx ;
 int bstp_task_queue ;
 struct bstp_task* bstp_task_queue_running ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int msleep (struct bstp_task**,int ,int ,char*,int *) ;
 int wakeup (int *) ;

__attribute__((used)) static void
bstp_task_drain(struct bstp_task *bt)
{
 lck_mtx_lock(bstp_task_mtx);

 while (bt->bt_count != 0 || bstp_task_queue_running == bt) {
  wakeup(&bstp_task_queue);
  msleep(&bstp_task_queue_running, bstp_task_mtx, PZERO, "bstp_task_queue", ((void*)0));
 }
 lck_mtx_unlock(bstp_task_mtx);
}
