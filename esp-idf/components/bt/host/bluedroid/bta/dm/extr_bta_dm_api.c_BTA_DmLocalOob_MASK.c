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
struct TYPE_5__ {TYPE_1__ hdr; } ;
typedef  TYPE_2__ tBTA_DM_API_LOC_OOB ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_DM_API_LOC_OOB_EVT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int) ; 

void FUNC2(void)
{
    tBTA_DM_API_LOC_OOB    *p_msg;

    if ((p_msg = (tBTA_DM_API_LOC_OOB *) FUNC1(sizeof(tBTA_DM_API_LOC_OOB))) != NULL) {
        p_msg->hdr.event = BTA_DM_API_LOC_OOB_EVT;
        FUNC0(p_msg);
    }
}