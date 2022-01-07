
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8_t ;
typedef scalar_t__ u32_t ;
typedef int u16_t ;
struct bt_mesh_model_op {scalar_t__ opcode; scalar_t__ func; } ;
struct bt_mesh_model {struct bt_mesh_model_op* op; } ;


 scalar_t__ BLE_MESH_ADDR_IS_GROUP (int ) ;
 scalar_t__ BLE_MESH_ADDR_IS_VIRTUAL (int ) ;
 int bt_mesh_model_find_group (struct bt_mesh_model*,int ) ;
 int model_has_key (struct bt_mesh_model*,int ) ;

__attribute__((used)) static const struct bt_mesh_model_op *find_op(struct bt_mesh_model *models,
        u8_t model_count, u16_t dst,
        u16_t app_idx, u32_t opcode,
        struct bt_mesh_model **model)
{
    u8_t i;

    for (i = 0U; i < model_count; i++) {
        const struct bt_mesh_model_op *op;

        *model = &models[i];

        if (BLE_MESH_ADDR_IS_GROUP(dst) ||
                BLE_MESH_ADDR_IS_VIRTUAL(dst)) {
            if (!bt_mesh_model_find_group(*model, dst)) {
                continue;
            }
        }

        if (!model_has_key(*model, app_idx)) {
            continue;
        }

        for (op = (*model)->op; op->func; op++) {
            if (op->opcode == opcode) {
                return op;
            }
        }
    }

    *model = ((void*)0);
    return ((void*)0);
}
