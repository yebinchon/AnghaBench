
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cnd ;
 int cnd_destroy (int *) ;
 int cnd_signal (int *) ;
 int db_enabled ;
 int load_mtx ;
 int mtx ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ring ;
 int ring_free (int *) ;
 int ring_put_exit (int *) ;
 int thrd ;
 int thrd_join (int ,int *) ;

void db_worker_stop() {
    if (!db_enabled) {
        return;
    }
    mtx_lock(&mtx);
    ring_put_exit(&ring);
    cnd_signal(&cnd);
    mtx_unlock(&mtx);
    thrd_join(thrd, ((void*)0));
    cnd_destroy(&cnd);
    mtx_destroy(&load_mtx);
    mtx_destroy(&mtx);
    ring_free(&ring);
}
