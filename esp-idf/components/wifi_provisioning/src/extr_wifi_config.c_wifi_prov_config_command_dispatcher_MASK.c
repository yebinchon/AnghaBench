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
struct TYPE_7__ {int /*<<< orphan*/  msg; } ;
typedef  TYPE_1__ WiFiConfigPayload ;
struct TYPE_8__ {scalar_t__ (* command_handler ) (TYPE_1__*,TYPE_1__*,void*) ;} ;

/* Variables and functions */
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 TYPE_6__* cmd_table ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,TYPE_1__*,void*) ; 

__attribute__((used)) static esp_err_t FUNC4(WiFiConfigPayload *req,
                                                     WiFiConfigPayload *resp, void *priv_data)
{
    esp_err_t ret;

    FUNC0(TAG, "In wifi_prov_config_command_dispatcher Cmd=%d", req->msg);

    int cmd_index = FUNC2(req->msg);
    if (cmd_index < 0) {
        FUNC1(TAG, "Invalid command handler lookup");
        return ESP_FAIL;
    }

    ret = cmd_table[cmd_index].command_handler(req, resp, priv_data);
    if (ret != ESP_OK) {
        FUNC1(TAG, "Error executing command handler");
        return ESP_FAIL;
    }

    return ESP_OK;
}