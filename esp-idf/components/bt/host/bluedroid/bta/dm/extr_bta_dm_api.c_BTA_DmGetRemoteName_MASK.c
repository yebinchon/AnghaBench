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
struct TYPE_5__ {int /*<<< orphan*/  rmt_addr; int /*<<< orphan*/ * rmt_name_cb; TYPE_1__ hdr; } ;
typedef  TYPE_2__ tBTA_DM_API_GET_REMOTE_NAME ;
typedef  int /*<<< orphan*/  tBTA_CMPL_CB ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_DM_API_GET_REMOTE_NAME_EVT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int) ; 

void FUNC3(BD_ADDR remote_addr, tBTA_CMPL_CB *rmt_name_cb)
{
    tBTA_DM_API_GET_REMOTE_NAME *p_msg;

    if ((p_msg = (tBTA_DM_API_GET_REMOTE_NAME *) FUNC2(sizeof(tBTA_DM_API_GET_REMOTE_NAME))) != NULL) {
        p_msg->hdr.event = BTA_DM_API_GET_REMOTE_NAME_EVT;
        p_msg->rmt_name_cb = rmt_name_cb;
        FUNC0(p_msg->rmt_addr, remote_addr);
        FUNC1(p_msg);
    }
}