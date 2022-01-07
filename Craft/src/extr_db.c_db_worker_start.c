
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cnd ;
 int cnd_init (int *) ;
 int db_enabled ;
 int db_worker_run ;
 int load_mtx ;
 int mtx ;
 int mtx_init (int *,int ) ;
 int mtx_plain ;
 int ring ;
 int ring_alloc (int *,int) ;
 int thrd ;
 int thrd_create (int *,int ,char*) ;

void db_worker_start(char *path) {
    if (!db_enabled) {
        return;
    }
    ring_alloc(&ring, 1024);
    mtx_init(&mtx, mtx_plain);
    mtx_init(&load_mtx, mtx_plain);
    cnd_init(&cnd);
    thrd_create(&thrd, db_worker_run, path);
}
