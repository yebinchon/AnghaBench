#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_4__ {struct TYPE_4__* name; int /*<<< orphan*/  ctx; int /*<<< orphan*/  (* ctx_free_fn ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {size_t props_count; TYPE_2__** props; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_1__* local_ctrl_inst_ctx ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

esp_err_t FUNC4(const char *name)
{
    int idx = FUNC1(name);
    if (idx < 0) {
        FUNC0(TAG, "Property %s not found", name);
        return ESP_ERR_NOT_FOUND;
    }

    /* Release memory allocated for property data */
    if (local_ctrl_inst_ctx->props[idx]->ctx_free_fn) {
        local_ctrl_inst_ctx->props[idx]->ctx_free_fn(
            local_ctrl_inst_ctx->props[idx]->ctx);
    }
    FUNC2(local_ctrl_inst_ctx->props[idx]->name);
    FUNC2(local_ctrl_inst_ctx->props[idx]);
    local_ctrl_inst_ctx->props[idx++] = NULL;

    /* Move the following properties forward, so that there is
     * no empty space between two properties */
    for (uint32_t i = idx; i < local_ctrl_inst_ctx->props_count; i++) {
        if (local_ctrl_inst_ctx->props[i] == NULL) {
            break;
        }
        local_ctrl_inst_ctx->props[i-1] = local_ctrl_inst_ctx->props[i];
    }
    local_ctrl_inst_ctx->props_count--;
    return ESP_OK;
}