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

/* Variables and functions */
 int /*<<< orphan*/  APP_RC_CT_TL_RN_PLAYBACK_CHANGE ; 
 int /*<<< orphan*/  ESP_AVRC_BIT_MASK_OP_TEST ; 
 int /*<<< orphan*/  ESP_AVRC_RN_PLAY_STATUS_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_avrc_peer_rn_cap ; 

__attribute__((used)) static void FUNC2(void)
{
    if (FUNC1(ESP_AVRC_BIT_MASK_OP_TEST, &s_avrc_peer_rn_cap,
                                           ESP_AVRC_RN_PLAY_STATUS_CHANGE)) {
        FUNC0(APP_RC_CT_TL_RN_PLAYBACK_CHANGE, ESP_AVRC_RN_PLAY_STATUS_CHANGE, 0);
    }
}