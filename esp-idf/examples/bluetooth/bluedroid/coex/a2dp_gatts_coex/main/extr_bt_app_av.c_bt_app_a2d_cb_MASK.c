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
typedef  int /*<<< orphan*/  esp_a2d_cb_param_t ;
typedef  int esp_a2d_cb_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  BT_AV_TAG ; 
#define  ESP_A2D_AUDIO_CFG_EVT 130 
#define  ESP_A2D_AUDIO_STATE_EVT 129 
#define  ESP_A2D_CONNECTION_STATE_EVT 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bt_av_hdl_a2d_evt ; 

void FUNC2(esp_a2d_cb_event_t event, esp_a2d_cb_param_t *param)
{
    switch (event) {
    case ESP_A2D_CONNECTION_STATE_EVT:
    case ESP_A2D_AUDIO_STATE_EVT:
    case ESP_A2D_AUDIO_CFG_EVT: {
        FUNC1(bt_av_hdl_a2d_evt, event, param, sizeof(esp_a2d_cb_param_t), NULL);
        break;
    }
    default:
        FUNC0(BT_AV_TAG, "Invalid A2DP event: %d", event);
        break;
    }
}