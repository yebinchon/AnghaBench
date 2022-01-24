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
struct TYPE_7__ {int data_len; int /*<<< orphan*/ * data; int /*<<< orphan*/ * mac_addr; } ;
struct TYPE_5__ {TYPE_3__ recv_cb; } ;
struct TYPE_6__ {int /*<<< orphan*/  id; TYPE_1__ info; } ;
typedef  TYPE_2__ example_espnow_event_t ;
typedef  TYPE_3__ example_espnow_event_recv_cb_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int ESP_NOW_ETH_ALEN ; 
 int /*<<< orphan*/  EXAMPLE_ESPNOW_RECV_CB ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ pdTRUE ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int /*<<< orphan*/  s_example_espnow_queue ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(const uint8_t *mac_addr, const uint8_t *data, int len)
{
    example_espnow_event_t evt;
    example_espnow_event_recv_cb_t *recv_cb = &evt.info.recv_cb;

    if (mac_addr == NULL || data == NULL || len <= 0) {
        FUNC0(TAG, "Receive cb arg error");
        return;
    }

    evt.id = EXAMPLE_ESPNOW_RECV_CB;
    FUNC4(recv_cb->mac_addr, mac_addr, ESP_NOW_ETH_ALEN);
    recv_cb->data = FUNC3(len);
    if (recv_cb->data == NULL) {
        FUNC0(TAG, "Malloc receive data fail");
        return;
    }
    FUNC4(recv_cb->data, data, len);
    recv_cb->data_len = len;
    if (FUNC5(s_example_espnow_queue, &evt, portMAX_DELAY) != pdTRUE) {
        FUNC1(TAG, "Send receive queue fail");
        FUNC2(recv_cb->data);
    }
}