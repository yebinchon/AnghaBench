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
typedef  int uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/  volume; } ;
typedef  TYPE_1__ esp_avrc_rn_param_t ;

/* Variables and functions */
 int /*<<< orphan*/  APP_RC_CT_TL_RN_VOLUME_CHANGE ; 
 int /*<<< orphan*/  BT_RC_CT_TAG ; 
#define  ESP_AVRC_RN_VOLUME_CHANGE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(uint8_t event_id, esp_avrc_rn_param_t *event_parameter)
{
    switch (event_id) {
    case ESP_AVRC_RN_VOLUME_CHANGE:
        FUNC0(BT_RC_CT_TAG, "Volume changed: %d", event_parameter->volume);
        FUNC0(BT_RC_CT_TAG, "Set absolute volume: volume %d", event_parameter->volume + 5);
        FUNC2(APP_RC_CT_TL_RN_VOLUME_CHANGE, event_parameter->volume + 5);
        FUNC1();
        break;
    }
}