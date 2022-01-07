
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct bt_mesh_model {int * keys; scalar_t__ user_data; } ;
struct TYPE_5__ {int queue; } ;
typedef TYPE_1__ config_internal_data_t ;
struct TYPE_6__ {TYPE_1__* internal_data; int op_pair; int op_pair_size; struct bt_mesh_model* model; } ;
typedef TYPE_2__ bt_mesh_config_client_t ;


 int ARRAY_SIZE (int ) ;
 int BLE_MESH_KEY_DEV ;
 int BT_DBG (char*,int) ;
 int BT_ERR (char*) ;
 int EINVAL ;
 int ENOMEM ;
 int bt_mesh_cfg_client_mutex_new () ;
 int cfg_op_pair ;
 TYPE_2__* cli ;
 TYPE_1__* osi_calloc (int) ;
 int sys_slist_init (int *) ;

int bt_mesh_cfg_cli_init(struct bt_mesh_model *model, bool primary)
{
    config_internal_data_t *internal = ((void*)0);
    bt_mesh_config_client_t *client = ((void*)0);

    BT_DBG("primary %u", primary);

    if (!primary) {
        BT_ERR("Configuration Client only allowed in primary element");
        return -EINVAL;
    }

    if (!model) {
        BT_ERR("Configuration Client model is NULL");
        return -EINVAL;
    }

    client = (bt_mesh_config_client_t *)model->user_data;
    if (!client) {
        BT_ERR("No Configuration Client context provided");
        return -EINVAL;
    }


    internal = osi_calloc(sizeof(config_internal_data_t));
    if (!internal) {
        BT_ERR("Allocate memory for Configuration Client internal data fail");
        return -ENOMEM;
    }

    sys_slist_init(&internal->queue);

    client->model = model;
    client->op_pair_size = ARRAY_SIZE(cfg_op_pair);
    client->op_pair = cfg_op_pair;
    client->internal_data = internal;

    cli = client;


    model->keys[0] = BLE_MESH_KEY_DEV;

    bt_mesh_cfg_client_mutex_new();

    return 0;
}
