#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_7__ {int /*<<< orphan*/  status; int /*<<< orphan*/  mac_addr; } ;
struct TYPE_5__ {TYPE_3__ send_cb; } ;
struct TYPE_6__ {int /*<<< orphan*/  id; TYPE_1__ info; } ;
typedef  TYPE_2__ example_espnow_event_t ;
typedef  TYPE_3__ example_espnow_event_send_cb_t ;
typedef  int /*<<< orphan*/  esp_now_send_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ESP_NOW_ETH_ALEN ; 
 int /*<<< orphan*/  EXAMPLE_ESPNOW_SEND_CB ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ pdTRUE ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int /*<<< orphan*/  s_example_espnow_queue ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(const uint8_t *mac_addr, esp_now_send_status_t status)
{
    example_espnow_event_t evt;
    example_espnow_event_send_cb_t *send_cb = &evt.info.send_cb;

    if (mac_addr == NULL) {
        FUNC0(TAG, "Send cb arg error");
        return;
    }

    evt.id = EXAMPLE_ESPNOW_SEND_CB;
    FUNC2(send_cb->mac_addr, mac_addr, ESP_NOW_ETH_ALEN);
    send_cb->status = status;
    if (FUNC3(s_example_espnow_queue, &evt, portMAX_DELAY) != pdTRUE) {
        FUNC1(TAG, "Send send queue fail");
    }
}