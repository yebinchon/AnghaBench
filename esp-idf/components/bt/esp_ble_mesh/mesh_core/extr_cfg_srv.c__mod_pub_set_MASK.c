#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  void* u8_t ;
typedef  scalar_t__ u16_t ;
struct bt_mesh_model {TYPE_1__* pub; } ;
typedef  scalar_t__ s32_t ;
struct TYPE_2__ {scalar_t__ addr; unsigned int key; unsigned int cred; unsigned int ttl; unsigned int period; unsigned int retransmit; unsigned int count; int /*<<< orphan*/  timer; scalar_t__ update; } ;

/* Variables and functions */
 scalar_t__ BLE_MESH_ADDR_UNASSIGNED ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  CONFIG_BLE_MESH_LOW_POWER ; 
 int /*<<< orphan*/  CONFIG_BLE_MESH_SETTINGS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 void* STATUS_FEAT_NOT_SUPP ; 
 void* STATUS_INVALID_APPKEY ; 
 void* STATUS_NVAL_PUB_PARAM ; 
 void* STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (struct bt_mesh_model*) ; 
 int /*<<< orphan*/  FUNC4 (struct bt_mesh_model*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static u8_t FUNC7(struct bt_mesh_model *model, u16_t pub_addr,
                         u16_t app_idx, u8_t cred_flag, u8_t ttl, u8_t period,
                         u8_t retransmit, bool store)
{
    if (!model->pub) {
        return STATUS_NVAL_PUB_PARAM;
    }

    if (!FUNC1(CONFIG_BLE_MESH_LOW_POWER) && cred_flag) {
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
            FUNC5(&model->pub->timer);
        }

        if (FUNC1(CONFIG_BLE_MESH_SETTINGS) && store) {
            FUNC4(model);
        }

        return STATUS_SUCCESS;
    }

    if (!FUNC2(app_idx)) {
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

        period_ms = FUNC3(model);
        FUNC0("period %u ms", period_ms);

        if (period_ms) {
            FUNC6(&model->pub->timer, period_ms);
        } else {
            FUNC5(&model->pub->timer);
        }
    }

    if (FUNC1(CONFIG_BLE_MESH_SETTINGS) && store) {
        FUNC4(model);
    }

    return STATUS_SUCCESS;
}