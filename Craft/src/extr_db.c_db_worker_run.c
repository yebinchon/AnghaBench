
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int key; int q; int p; int w; int z; int y; int x; } ;
typedef TYPE_1__ RingEntry ;







 int _db_commit () ;
 int _db_insert_block (int ,int ,int ,int ,int ,int ) ;
 int _db_insert_light (int ,int ,int ,int ,int ,int ) ;
 int _db_set_key (int ,int ,int ) ;
 int cnd ;
 int cnd_wait (int *,int *) ;
 int mtx ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ring ;
 int ring_get (int *,TYPE_1__*) ;

int db_worker_run(void *arg) {
    int running = 1;
    while (running) {
        RingEntry e;
        mtx_lock(&mtx);
        while (!ring_get(&ring, &e)) {
            cnd_wait(&cnd, &mtx);
        }
        mtx_unlock(&mtx);
        switch (e.type) {
            case 132:
                _db_insert_block(e.p, e.q, e.x, e.y, e.z, e.w);
                break;
            case 128:
                _db_insert_light(e.p, e.q, e.x, e.y, e.z, e.w);
                break;
            case 129:
                _db_set_key(e.p, e.q, e.key);
                break;
            case 131:
                _db_commit();
                break;
            case 130:
                running = 0;
                break;
        }
    }
    return 0;
}
