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
typedef  int uint16_t ;
struct TYPE_3__ {int /*<<< orphan*/  fd; } ;
struct TYPE_4__ {TYPE_1__ srv_open; } ;
typedef  TYPE_2__ esp_spp_cb_param_t ;
typedef  int esp_spp_cb_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_BT_CONNECTABLE ; 
 int /*<<< orphan*/  ESP_BT_GENERAL_DISCOVERABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
#define  ESP_SPP_CLOSE_EVT 134 
#define  ESP_SPP_CL_INIT_EVT 133 
#define  ESP_SPP_DISCOVERY_COMP_EVT 132 
#define  ESP_SPP_INIT_EVT 131 
#define  ESP_SPP_OPEN_EVT 130 
#define  ESP_SPP_SRV_OPEN_EVT 129 
#define  ESP_SPP_START_EVT 128 
 int /*<<< orphan*/  EXAMPLE_DEVICE_NAME ; 
 int /*<<< orphan*/  SPP_SERVER_NAME ; 
 int /*<<< orphan*/  SPP_TAG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  role_slave ; 
 int /*<<< orphan*/  sec_mask ; 
 int /*<<< orphan*/  spp_read_handle ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(uint16_t e, void *p)
{
    esp_spp_cb_event_t event = e;
    esp_spp_cb_param_t *param = p;

    switch (event) {
    case ESP_SPP_INIT_EVT:
        FUNC0(SPP_TAG, "ESP_SPP_INIT_EVT");
        FUNC1(EXAMPLE_DEVICE_NAME);
        FUNC2(ESP_BT_CONNECTABLE, ESP_BT_GENERAL_DISCOVERABLE);
        FUNC3(sec_mask,role_slave, 0, SPP_SERVER_NAME);
        break;
    case ESP_SPP_DISCOVERY_COMP_EVT:
        FUNC0(SPP_TAG, "ESP_SPP_DISCOVERY_COMP_EVT");
        break;
    case ESP_SPP_OPEN_EVT:
        FUNC0(SPP_TAG, "ESP_SPP_OPEN_EVT");
        break;
    case ESP_SPP_CLOSE_EVT:
        FUNC0(SPP_TAG, "ESP_SPP_CLOSE_EVT");
        break;
    case ESP_SPP_START_EVT:
        FUNC0(SPP_TAG, "ESP_SPP_START_EVT");
        break;
    case ESP_SPP_CL_INIT_EVT:
        FUNC0(SPP_TAG, "ESP_SPP_CL_INIT_EVT");
        break;
    case ESP_SPP_SRV_OPEN_EVT:
        FUNC0(SPP_TAG, "ESP_SPP_SRV_OPEN_EVT");
        FUNC4(spp_read_handle, param->srv_open.fd);
        break;
    default:
        break;
    }
}