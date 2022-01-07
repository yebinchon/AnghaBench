
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ state; int mtx; } ;
typedef TYPE_1__ Worker ;
struct TYPE_5__ {TYPE_1__* workers; } ;
typedef int Player ;


 int WORKERS ;
 scalar_t__ WORKER_IDLE ;
 int check_workers () ;
 int ensure_chunks_worker (int *,TYPE_1__*) ;
 int force_chunks (int *) ;
 TYPE_2__* g ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void ensure_chunks(Player *player) {
    check_workers();
    force_chunks(player);
    for (int i = 0; i < WORKERS; i++) {
        Worker *worker = g->workers + i;
        mtx_lock(&worker->mtx);
        if (worker->state == WORKER_IDLE) {
            ensure_chunks_worker(player, worker);
        }
        mtx_unlock(&worker->mtx);
    }
}
