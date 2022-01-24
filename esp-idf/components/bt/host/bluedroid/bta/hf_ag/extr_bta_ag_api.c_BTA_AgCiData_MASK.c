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
struct TYPE_3__ {int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ BT_HDR ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_AG_CI_SCO_DATA_EVT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 

void FUNC2(void)
{
    BT_HDR *p_buf;
    if ((p_buf = (BT_HDR *) FUNC1(sizeof(BT_HDR))) != NULL) {
        p_buf->event = BTA_AG_CI_SCO_DATA_EVT;
        FUNC0(p_buf);
    }
}