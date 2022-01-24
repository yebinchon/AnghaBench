#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ app_gap_cb_t ;

/* Variables and functions */
 int /*<<< orphan*/  APP_GAP_STATE_DEVICE_DISCOVERING ; 
 int /*<<< orphan*/  ESP_BT_CONNECTABLE ; 
 int /*<<< orphan*/  ESP_BT_GENERAL_DISCOVERABLE ; 
 int /*<<< orphan*/  ESP_BT_INQ_MODE_GENERAL_INQUIRY ; 
 int /*<<< orphan*/  bt_app_gap_cb ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_1__ m_dev_info ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC5(void)
{
    char *dev_name = "ESP_GAP_INQRUIY";
    FUNC0(dev_name);

    /* set discoverable and connectable mode, wait to be connected */
    FUNC2(ESP_BT_CONNECTABLE, ESP_BT_GENERAL_DISCOVERABLE);

    /* register GAP callback function */
    FUNC1(bt_app_gap_cb);

    /* inititialize device information and status */
    app_gap_cb_t *p_dev = &m_dev_info;
    FUNC4(p_dev, 0, sizeof(app_gap_cb_t));

    /* start to discover nearby Bluetooth devices */
    p_dev->state = APP_GAP_STATE_DEVICE_DISCOVERING;
    FUNC3(ESP_BT_INQ_MODE_GENERAL_INQUIRY, 10, 0);
}