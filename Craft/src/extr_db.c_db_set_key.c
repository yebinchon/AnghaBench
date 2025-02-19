
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
 int ring_put_key (int *,int,int,int) ;

void db_set_key(int p, int q, int key) {
    if (!db_enabled) {
        return;
    }
    mtx_lock(&mtx);
    ring_put_key(&ring, p, q, key);
    cnd_signal(&cnd);
    mtx_unlock(&mtx);
}
