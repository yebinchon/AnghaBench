#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * sub_protocol; } ;
typedef  TYPE_1__ transport_ws_t ;
typedef  int /*<<< orphan*/ * esp_transport_handle_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_ERR_NO_MEM ; 
 int /*<<< orphan*/  ESP_OK ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 

esp_err_t FUNC3(esp_transport_handle_t t, const char *sub_protocol)
{
    if (t == NULL) {
        return ESP_ERR_INVALID_ARG;
    }
    transport_ws_t *ws = FUNC0(t);
    if (ws->sub_protocol) {
        FUNC1(ws->sub_protocol);
    }
    if (sub_protocol == NULL) {
        ws->sub_protocol = NULL;
        return ESP_OK;
    }
    ws->sub_protocol = FUNC2(sub_protocol);
    if (ws->sub_protocol == NULL) {
        return ESP_ERR_NO_MEM;
    }
    return ESP_OK;
}