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
typedef  int /*<<< orphan*/  tBTA_STATUS ;
struct TYPE_3__ {int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ BT_HDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BTA_DM_API_ENABLE_TEST_MODE_EVT ; 
 int /*<<< orphan*/  BTA_FAILURE ; 
 int /*<<< orphan*/  BTA_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int) ; 

tBTA_STATUS FUNC3(void)
{
    BT_HDR    *p_msg;

    FUNC0("BTA_EnableTestMode");

    if ((p_msg = (BT_HDR *) FUNC2(sizeof(BT_HDR))) != NULL) {
        p_msg->event = BTA_DM_API_ENABLE_TEST_MODE_EVT;
        FUNC1(p_msg);
        return BTA_SUCCESS;
    }
    return BTA_FAILURE;
}