#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  post_sco; int /*<<< orphan*/  peer_addr; } ;
typedef  TYPE_1__ tBTA_AG_SCB ;
typedef  int /*<<< orphan*/  tBTA_AG_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_AG_POST_SCO_CLOSE_RFC ; 
 int /*<<< orphan*/  BTA_AG_POST_SCO_NONE ; 
 int /*<<< orphan*/  BT_TRANSPORT_BR_EDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(tBTA_AG_SCB *p_scb, tBTA_AG_DATA *p_data)
{
    /* Take the link out of sniff and set L2C idle time to 0 */
    FUNC4(p_scb->peer_addr);
    FUNC0(p_scb->peer_addr, 0, BT_TRANSPORT_BR_EDR);
    /* if SCO is open close SCO and wait on RFCOMM close */
    if (FUNC2(p_scb)) {
        p_scb->post_sco = BTA_AG_POST_SCO_CLOSE_RFC;
    } else {
        p_scb->post_sco = BTA_AG_POST_SCO_NONE;
        FUNC1(p_scb, p_data);
    }
    /* Always do SCO shutdown to handle all SCO corner cases */
    FUNC3(p_scb, p_data);
}