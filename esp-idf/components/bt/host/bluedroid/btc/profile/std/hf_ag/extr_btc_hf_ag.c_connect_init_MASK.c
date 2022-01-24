#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  bt_status_t ;
struct TYPE_10__ {int /*<<< orphan*/  address; } ;
typedef  TYPE_3__ bt_bdaddr_t ;
struct TYPE_8__ {int /*<<< orphan*/  address; } ;
struct TYPE_9__ {TYPE_1__ connected_bda; int /*<<< orphan*/  handle; int /*<<< orphan*/  connection_state; } ;
struct TYPE_11__ {TYPE_2__ btc_hf_cb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTC_HF_SECURITY ; 
 int /*<<< orphan*/  BTC_HF_SERVICES ; 
 int /*<<< orphan*/  BT_STATUS_BUSY ; 
 int /*<<< orphan*/  BT_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ESP_HF_CONNECTION_STATE_CONNECTING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_3__*) ; 
 int btc_max_hf_clients ; 
 TYPE_5__* hf_local_param ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static bt_status_t FUNC5(bt_bdaddr_t *bd_addr, uint16_t uuid)
{
    int idx = FUNC3(bd_addr);
    FUNC1();
    if (idx == btc_max_hf_clients) {
        return BT_STATUS_BUSY;
    }

    if (!FUNC4(bd_addr)) {
        hf_local_param[idx].btc_hf_cb.connection_state  = ESP_HF_CONNECTION_STATE_CONNECTING;
        FUNC2(hf_local_param[idx].btc_hf_cb.connected_bda.address, bd_addr->address);
        FUNC0(hf_local_param[idx].btc_hf_cb.handle, hf_local_param[idx].btc_hf_cb.connected_bda.address, BTC_HF_SECURITY, BTC_HF_SERVICES); 
        return BT_STATUS_SUCCESS;
    }
    return BT_STATUS_BUSY;
}