#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  work; } ;
struct bt_mesh_state_transition {int delay; TYPE_1__ timer; int /*<<< orphan*/  flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLE_MESH_TRANS_TIMER_START ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct bt_mesh_state_transition *transition)
{
    if (transition->delay) {
        FUNC2(&transition->timer, FUNC0(5 * transition->delay));
        FUNC1(transition->flag, BLE_MESH_TRANS_TIMER_START);
    } else {
        FUNC3(&transition->timer.work);
    }
}