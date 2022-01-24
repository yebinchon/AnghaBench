#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct bt_mesh_model {int /*<<< orphan*/ * keys; scalar_t__ user_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  queue; } ;
typedef  TYPE_1__ config_internal_data_t ;
struct TYPE_6__ {TYPE_1__* internal_data; int /*<<< orphan*/  op_pair; int /*<<< orphan*/  op_pair_size; struct bt_mesh_model* model; } ;
typedef  TYPE_2__ bt_mesh_config_client_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BLE_MESH_KEY_DEV ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  cfg_op_pair ; 
 TYPE_2__* cli ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct bt_mesh_model *model, bool primary)
{
    config_internal_data_t *internal = NULL;
    bt_mesh_config_client_t *client = NULL;

    FUNC1("primary %u", primary);

    if (!primary) {
        FUNC2("Configuration Client only allowed in primary element");
        return -EINVAL;
    }

    if (!model) {
        FUNC2("Configuration Client model is NULL");
        return -EINVAL;
    }

    client = (bt_mesh_config_client_t *)model->user_data;
    if (!client) {
        FUNC2("No Configuration Client context provided");
        return -EINVAL;
    }

    /* TODO: call osi_free() when deinit function is invoked*/
    internal = FUNC4(sizeof(config_internal_data_t));
    if (!internal) {
        FUNC2("Allocate memory for Configuration Client internal data fail");
        return -ENOMEM;
    }

    FUNC5(&internal->queue);

    client->model = model;
    client->op_pair_size = FUNC0(cfg_op_pair);
    client->op_pair = cfg_op_pair;
    client->internal_data = internal;

    cli = client;

    /* Configuration Model security is device-key based */
    model->keys[0] = BLE_MESH_KEY_DEV;

    FUNC3();

    return 0;
}