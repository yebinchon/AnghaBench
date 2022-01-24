#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  osi_thread_t ;
typedef  int /*<<< orphan*/  hci_hal_callbacks_t ;

/* Variables and functions */
 scalar_t__ BLE_ADV_REPORT_FLOW_CONTROL_NUM ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  HCI_HAL_SERIAL_BUFFER_SIZE ; 
 scalar_t__ L2CAP_HOST_FC_ACL_BUFS ; 
 scalar_t__ QUEUE_SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* callbacks ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * hci_h4_thread ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  vhci_host_cb ; 

__attribute__((used)) static bool FUNC3(const hci_hal_callbacks_t *upper_callbacks, void *task_thread)
{
    FUNC0(upper_callbacks != NULL);
    FUNC0(task_thread != NULL);

    callbacks = upper_callbacks;
#if (BLE_ADV_REPORT_FLOW_CONTROL == TRUE)
    FUNC2(HCI_HAL_SERIAL_BUFFER_SIZE, BLE_ADV_REPORT_FLOW_CONTROL_NUM + L2CAP_HOST_FC_ACL_BUFS + QUEUE_SIZE_MAX); // adv flow control num + ACL flow control num + hci cmd numeber
#else
    hci_hal_env_init(HCI_HAL_SERIAL_BUFFER_SIZE, QUEUE_SIZE_MAX);
#endif

    hci_h4_thread = (osi_thread_t *)task_thread;

    //register vhci host cb
    if (FUNC1(&vhci_host_cb) != ESP_OK) {
        return false;
    }

    return true;
}