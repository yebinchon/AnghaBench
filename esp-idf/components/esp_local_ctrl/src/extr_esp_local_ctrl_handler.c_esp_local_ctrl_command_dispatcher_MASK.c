#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ esp_err_t ;
struct TYPE_8__ {scalar_t__ (* command_handler ) (TYPE_1__*,TYPE_1__*,void**) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  msg; } ;
typedef  TYPE_1__ LocalCtrlMessage ;

/* Variables and functions */
 scalar_t__ ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 TYPE_6__* cmd_table ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,TYPE_1__*,void**) ; 

__attribute__((used)) static esp_err_t FUNC3(LocalCtrlMessage *req,
                                                   LocalCtrlMessage *resp,
                                                   void **ctx)
{
    int cmd_index = FUNC1(req->msg);
    if (cmd_index < 0) {
        FUNC0(TAG, "Invalid command handler lookup");
        return ESP_ERR_INVALID_ARG;
    }

    esp_err_t ret = cmd_table[cmd_index].command_handler(req, resp, ctx);
    if (ret != ESP_OK) {
        FUNC0(TAG, "Error executing command handler");
        return ret;
    }

    return ESP_OK;
}