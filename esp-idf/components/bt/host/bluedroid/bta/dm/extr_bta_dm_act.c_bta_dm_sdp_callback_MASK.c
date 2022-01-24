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
struct TYPE_4__ {int /*<<< orphan*/  event; } ;
struct TYPE_5__ {int /*<<< orphan*/  sdp_result; TYPE_1__ hdr; } ;
typedef  TYPE_2__ tBTA_DM_SDP_RESULT ;
typedef  int /*<<< orphan*/  UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_DM_SDP_RESULT_EVT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static void FUNC2 (UINT16 sdp_status)
{

    tBTA_DM_SDP_RESULT *p_msg;

    if ((p_msg = (tBTA_DM_SDP_RESULT *) FUNC1(sizeof(tBTA_DM_SDP_RESULT))) != NULL) {
        p_msg->hdr.event = BTA_DM_SDP_RESULT_EVT;
        p_msg->sdp_result = sdp_status;
        FUNC0(p_msg);

    }
}