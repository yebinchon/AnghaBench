
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ load; } ;
typedef TYPE_1__ WorkerItem ;
struct TYPE_6__ {scalar_t__ state; int mtx; TYPE_1__ item; int cnd; } ;
typedef TYPE_2__ Worker ;


 scalar_t__ WORKER_BUSY ;
 scalar_t__ WORKER_DONE ;
 int cnd_wait (int *,int *) ;
 int compute_chunk (TYPE_1__*) ;
 int load_chunk (TYPE_1__*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int worker_run(void *arg) {
    Worker *worker = (Worker *)arg;
    int running = 1;
    while (running) {
        mtx_lock(&worker->mtx);
        while (worker->state != WORKER_BUSY) {
            cnd_wait(&worker->cnd, &worker->mtx);
        }
        mtx_unlock(&worker->mtx);
        WorkerItem *item = &worker->item;
        if (item->load) {
            load_chunk(item);
        }
        compute_chunk(item);
        mtx_lock(&worker->mtx);
        worker->state = WORKER_DONE;
        mtx_unlock(&worker->mtx);
    }
    return 0;
}
