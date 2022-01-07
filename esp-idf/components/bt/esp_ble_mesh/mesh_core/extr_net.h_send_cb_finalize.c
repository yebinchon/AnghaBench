
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bt_mesh_send_cb {int (* end ) (int ,void*) ;int (* start ) (int ,int ,void*) ;} ;


 int stub1 (int ,int ,void*) ;
 int stub2 (int ,void*) ;

__attribute__((used)) static inline void send_cb_finalize(const struct bt_mesh_send_cb *cb,
                                    void *cb_data)
{
    if (!cb) {
        return;
    }

    if (cb->start) {
        cb->start(0, 0, cb_data);
    }

    if (cb->end) {
        cb->end(0, cb_data);
    }
}
