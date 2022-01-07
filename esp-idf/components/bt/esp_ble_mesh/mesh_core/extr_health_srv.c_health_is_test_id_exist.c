
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8_t ;
struct bt_mesh_model {struct bt_mesh_health_srv* user_data; } ;
struct TYPE_2__ {size_t id_count; size_t* test_ids; } ;
struct bt_mesh_health_srv {TYPE_1__ test; } ;



__attribute__((used)) static bool health_is_test_id_exist(struct bt_mesh_model *model, u8_t test_id)
{
    struct bt_mesh_health_srv *srv = model->user_data;
    u8_t i;

    for (i = 0U; i < srv->test.id_count; i++) {
        if (srv->test.test_ids[i] == test_id) {
            return 1;
        }
    }

    return 0;
}
