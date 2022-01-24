#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  reg_services; } ;
typedef  TYPE_1__ tBTA_AG_SCB ;
typedef  int /*<<< orphan*/  tBTA_AG_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  BTA_AG_FAIL_SDP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC3(tBTA_AG_SCB *p_scb, tBTA_AG_DATA *p_data)
{
    FUNC0(p_data);
    /* reopen registered servers */
    FUNC2(p_scb, p_scb->reg_services);
    /* reinitialize stuff */
    /* call open cback w. failure */
    FUNC1(p_scb, NULL, BTA_AG_FAIL_SDP);
}