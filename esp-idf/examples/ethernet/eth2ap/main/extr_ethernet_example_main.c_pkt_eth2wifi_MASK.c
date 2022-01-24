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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  length; int /*<<< orphan*/ * packet; } ;
typedef  TYPE_1__ flow_control_msg_t ;
typedef  int /*<<< orphan*/  esp_eth_handle_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FLOW_CONTROL_QUEUE_TIMEOUT_MS ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  flow_control_queue ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ pdTRUE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static esp_err_t FUNC4(esp_eth_handle_t eth_handle, uint8_t *buffer, uint32_t len)
{
    esp_err_t ret = ESP_OK;
    flow_control_msg_t msg = {
        .packet = buffer,
        .length = len
    };
    if (FUNC3(flow_control_queue, &msg, FUNC2(FLOW_CONTROL_QUEUE_TIMEOUT_MS)) != pdTRUE) {
        FUNC0(TAG, "send flow control message failed or timeout");
        FUNC1(buffer);
        ret = ESP_FAIL;
    }
    return ret;
}