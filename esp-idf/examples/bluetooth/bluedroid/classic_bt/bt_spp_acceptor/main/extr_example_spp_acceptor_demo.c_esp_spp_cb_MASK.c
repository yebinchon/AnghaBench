#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; int /*<<< orphan*/  handle; } ;
struct TYPE_8__ {TYPE_1__ data_ind; } ;
typedef  TYPE_2__ esp_spp_cb_param_t ;
typedef  int esp_spp_cb_event_t ;
struct TYPE_9__ {int tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_BT_CONNECTABLE ; 
 int /*<<< orphan*/  ESP_BT_GENERAL_DISCOVERABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
#define  ESP_SPP_CLOSE_EVT 137 
#define  ESP_SPP_CL_INIT_EVT 136 
#define  ESP_SPP_CONG_EVT 135 
#define  ESP_SPP_DATA_IND_EVT 134 
#define  ESP_SPP_DISCOVERY_COMP_EVT 133 
#define  ESP_SPP_INIT_EVT 132 
#define  ESP_SPP_OPEN_EVT 131 
#define  ESP_SPP_SRV_OPEN_EVT 130 
#define  ESP_SPP_START_EVT 129 
#define  ESP_SPP_WRITE_EVT 128 
 int /*<<< orphan*/  EXAMPLE_DEVICE_NAME ; 
 int /*<<< orphan*/  SPP_SERVER_NAME ; 
 int /*<<< orphan*/  SPP_TAG ; 
 int /*<<< orphan*/  data_num ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  role_slave ; 
 int /*<<< orphan*/  sec_mask ; 
 TYPE_3__ time_new ; 
 TYPE_3__ time_old ; 

__attribute__((used)) static void FUNC7(esp_spp_cb_event_t event, esp_spp_cb_param_t *param)
{
    switch (event) {
    case ESP_SPP_INIT_EVT:
        FUNC0(SPP_TAG, "ESP_SPP_INIT_EVT");
        FUNC1(EXAMPLE_DEVICE_NAME);
        FUNC2(ESP_BT_CONNECTABLE, ESP_BT_GENERAL_DISCOVERABLE);
        FUNC4(sec_mask,role_slave, 0, SPP_SERVER_NAME);
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
    case ESP_SPP_DATA_IND_EVT:
#if (SPP_SHOW_MODE == SPP_SHOW_DATA)
        FUNC0(SPP_TAG, "ESP_SPP_DATA_IND_EVT len=%d handle=%d",
                 param->data_ind.len, param->data_ind.handle);
        FUNC3("",param->data_ind.data,param->data_ind.len);
#else
        gettimeofday(&time_new, NULL);
        data_num += param->data_ind.len;
        if (time_new.tv_sec - time_old.tv_sec >= 3) {
            print_speed();
        }
#endif
        break;
    case ESP_SPP_CONG_EVT:
        FUNC0(SPP_TAG, "ESP_SPP_CONG_EVT");
        break;
    case ESP_SPP_WRITE_EVT:
        FUNC0(SPP_TAG, "ESP_SPP_WRITE_EVT");
        break;
    case ESP_SPP_SRV_OPEN_EVT:
        FUNC0(SPP_TAG, "ESP_SPP_SRV_OPEN_EVT");
        FUNC5(&time_old, NULL);
        break;
    default:
        break;
    }
}