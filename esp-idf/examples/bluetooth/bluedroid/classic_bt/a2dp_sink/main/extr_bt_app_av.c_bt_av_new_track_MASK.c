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
typedef  int uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  APP_RC_CT_TL_GET_META_DATA ; 
 int /*<<< orphan*/  APP_RC_CT_TL_RN_TRACK_CHANGE ; 
 int /*<<< orphan*/  ESP_AVRC_BIT_MASK_OP_TEST ; 
 int ESP_AVRC_MD_ATTR_ALBUM ; 
 int ESP_AVRC_MD_ATTR_ARTIST ; 
 int ESP_AVRC_MD_ATTR_GENRE ; 
 int ESP_AVRC_MD_ATTR_TITLE ; 
 int /*<<< orphan*/  ESP_AVRC_RN_TRACK_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_avrc_peer_rn_cap ; 

__attribute__((used)) static void FUNC3(void)
{
    // request metadata
    uint8_t attr_mask = ESP_AVRC_MD_ATTR_TITLE | ESP_AVRC_MD_ATTR_ARTIST | ESP_AVRC_MD_ATTR_ALBUM | ESP_AVRC_MD_ATTR_GENRE;
    FUNC0(APP_RC_CT_TL_GET_META_DATA, attr_mask);

    // register notification if peer support the event_id
    if (FUNC2(ESP_AVRC_BIT_MASK_OP_TEST, &s_avrc_peer_rn_cap,
                                           ESP_AVRC_RN_TRACK_CHANGE)) {
        FUNC1(APP_RC_CT_TL_RN_TRACK_CHANGE, ESP_AVRC_RN_TRACK_CHANGE, 0);
    }
}