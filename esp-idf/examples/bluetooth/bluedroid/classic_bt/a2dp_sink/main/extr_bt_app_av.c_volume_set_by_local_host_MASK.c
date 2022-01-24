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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
struct TYPE_3__ {scalar_t__ volume; } ;
typedef  TYPE_1__ esp_avrc_rn_param_t ;

/* Variables and functions */
 int /*<<< orphan*/  BT_RC_TG_TAG ; 
 int /*<<< orphan*/  ESP_AVRC_RN_RSP_CHANGED ; 
 int /*<<< orphan*/  ESP_AVRC_RN_VOLUME_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ s_volume ; 
 int /*<<< orphan*/  s_volume_lock ; 
 int s_volume_notify ; 

__attribute__((used)) static void FUNC4(uint8_t volume)
{
    FUNC0(BT_RC_TG_TAG, "Volume is set locally to: %d%%", (uint32_t)volume * 100 / 0x7f);
    FUNC1(&s_volume_lock);
    s_volume = volume;
    FUNC2(&s_volume_lock);

    if (s_volume_notify) {
        esp_avrc_rn_param_t rn_param;
        rn_param.volume = s_volume;
        FUNC3(ESP_AVRC_RN_VOLUME_CHANGE, ESP_AVRC_RN_RSP_CHANGED, &rn_param);
        s_volume_notify = false;
    }
}