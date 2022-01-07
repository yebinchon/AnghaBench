
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8_t ;
typedef scalar_t__ u16_t ;
struct bt_mesh_model {scalar_t__ user_data; } ;
struct TYPE_2__ {int trans_time; } ;
struct bt_mesh_gen_def_trans_time_srv {TYPE_1__ state; } ;
struct bt_mesh_elem {scalar_t__ addr; } ;


 int BLE_MESH_MODEL_ID_GEN_DEF_TRANS_TIME_SRV ;
 int INSTANTANEOUS_TRANS_TIME ;
 struct bt_mesh_elem* bt_mesh_elem_find (scalar_t__) ;
 struct bt_mesh_elem* bt_mesh_model_elem (struct bt_mesh_model*) ;
 struct bt_mesh_model* bt_mesh_model_find (struct bt_mesh_elem*,int ) ;
 scalar_t__ bt_mesh_primary_addr () ;

u8_t bt_mesh_get_default_trans_time(struct bt_mesh_model *model)
{
    struct bt_mesh_elem *element = bt_mesh_model_elem(model);
    struct bt_mesh_gen_def_trans_time_srv *state = ((void*)0);
    u16_t primary_addr = bt_mesh_primary_addr();
    struct bt_mesh_model *srv = ((void*)0);

    for (u16_t addr = element->addr; addr >= primary_addr; addr--) {
        element = bt_mesh_elem_find(addr);
        if (element) {
            srv = bt_mesh_model_find(element, BLE_MESH_MODEL_ID_GEN_DEF_TRANS_TIME_SRV);
            if (srv) {
                state = (struct bt_mesh_gen_def_trans_time_srv *)srv->user_data;
                if (state) {
                    return state->state.trans_time;
                }
            }
        }
    }

    return INSTANTANEOUS_TRANS_TIME;
}
