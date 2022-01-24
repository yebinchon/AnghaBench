#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/  event; } ;
struct TYPE_5__ {int /*<<< orphan*/  channels; int /*<<< orphan*/ * set_afh_cb; TYPE_1__ hdr; } ;
typedef  TYPE_2__ tBTA_DM_API_SET_AFH_CHANNELS ;
typedef  int /*<<< orphan*/  tBTA_CMPL_CB ;

/* Variables and functions */
 int /*<<< orphan*/  AFH_CHANNELS_LEN ; 
 int /*<<< orphan*/  BTA_DM_API_SET_AFH_CHANNELS_EVT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 

void FUNC3(const uint8_t *channels, tBTA_CMPL_CB  *set_afh_cb)
{
    tBTA_DM_API_SET_AFH_CHANNELS *p_msg;

    if ((p_msg = (tBTA_DM_API_SET_AFH_CHANNELS *) FUNC2(sizeof(tBTA_DM_API_SET_AFH_CHANNELS))) != NULL) {
        p_msg->hdr.event = BTA_DM_API_SET_AFH_CHANNELS_EVT;

        p_msg->set_afh_cb = set_afh_cb;
        FUNC1(p_msg->channels, channels, AFH_CHANNELS_LEN);

        FUNC0(p_msg);
    }
}