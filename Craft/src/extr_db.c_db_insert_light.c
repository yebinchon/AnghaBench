
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cnd ;
 int cnd_signal (int *) ;
 int db_enabled ;
 int mtx ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ring ;
 int ring_put_light (int *,int,int,int,int,int,int) ;

void db_insert_light(int p, int q, int x, int y, int z, int w) {
    if (!db_enabled) {
        return;
    }
    mtx_lock(&mtx);
    ring_put_light(&ring, p, q, x, y, z, w);
    cnd_signal(&cnd);
    mtx_unlock(&mtx);
}
