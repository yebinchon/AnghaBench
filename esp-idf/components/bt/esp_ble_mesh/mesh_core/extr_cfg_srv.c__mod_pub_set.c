
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8_t ;
typedef scalar_t__ u16_t ;
struct bt_mesh_model {TYPE_1__* pub; } ;
typedef scalar_t__ s32_t ;
struct TYPE_2__ {scalar_t__ addr; unsigned int key; unsigned int cred; unsigned int ttl; unsigned int period; unsigned int retransmit; unsigned int count; int timer; scalar_t__ update; } ;


 scalar_t__ BLE_MESH_ADDR_UNASSIGNED ;
 int BT_DBG (char*,scalar_t__) ;
 int CONFIG_BLE_MESH_LOW_POWER ;
 int CONFIG_BLE_MESH_SETTINGS ;
 scalar_t__ IS_ENABLED (int ) ;
 void* STATUS_FEAT_NOT_SUPP ;
 void* STATUS_INVALID_APPKEY ;
 void* STATUS_NVAL_PUB_PARAM ;
 void* STATUS_SUCCESS ;
 int bt_mesh_app_key_find (scalar_t__) ;
 scalar_t__ bt_mesh_model_pub_period_get (struct bt_mesh_model*) ;
 int bt_mesh_store_mod_pub (struct bt_mesh_model*) ;
 int k_delayed_work_cancel (int *) ;
 int k_delayed_work_submit (int *,scalar_t__) ;

__attribute__((used)) static u8_t _mod_pub_set(struct bt_mesh_model *model, u16_t pub_addr,
                         u16_t app_idx, u8_t cred_flag, u8_t ttl, u8_t period,
                         u8_t retransmit, bool store)
{
    if (!model->pub) {
        return STATUS_NVAL_PUB_PARAM;
    }

    if (!IS_ENABLED(CONFIG_BLE_MESH_LOW_POWER) && cred_flag) {
        return STATUS_FEAT_NOT_SUPP;
    }

    if (!model->pub->update && period) {
        return STATUS_NVAL_PUB_PARAM;
    }

    if (pub_addr == BLE_MESH_ADDR_UNASSIGNED) {
        if (model->pub->addr == BLE_MESH_ADDR_UNASSIGNED) {
            return STATUS_SUCCESS;
        }

        model->pub->addr = BLE_MESH_ADDR_UNASSIGNED;
        model->pub->key = 0U;
        model->pub->cred = 0U;
        model->pub->ttl = 0U;
        model->pub->period = 0U;
        model->pub->retransmit = 0U;
        model->pub->count = 0U;

        if (model->pub->update) {
            k_delayed_work_cancel(&model->pub->timer);
        }

        if (IS_ENABLED(CONFIG_BLE_MESH_SETTINGS) && store) {
            bt_mesh_store_mod_pub(model);
        }

        return STATUS_SUCCESS;
    }

    if (!bt_mesh_app_key_find(app_idx)) {
        return STATUS_INVALID_APPKEY;
    }

    model->pub->addr = pub_addr;
    model->pub->key = app_idx;
    model->pub->cred = cred_flag;
    model->pub->ttl = ttl;
    model->pub->period = period;
    model->pub->retransmit = retransmit;

    if (model->pub->update) {
        s32_t period_ms;

        period_ms = bt_mesh_model_pub_period_get(model);
        BT_DBG("period %u ms", period_ms);

        if (period_ms) {
            k_delayed_work_submit(&model->pub->timer, period_ms);
        } else {
            k_delayed_work_cancel(&model->pub->timer);
        }
    }

    if (IS_ENABLED(CONFIG_BLE_MESH_SETTINGS) && store) {
        bt_mesh_store_mod_pub(model);
    }

    return STATUS_SUCCESS;
}
