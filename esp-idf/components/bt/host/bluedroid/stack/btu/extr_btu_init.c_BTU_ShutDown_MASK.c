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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  btu_cb_ptr ; 
 int /*<<< orphan*/ * btu_general_alarm_hash_map ; 
 int /*<<< orphan*/  btu_general_alarm_lock ; 
 int /*<<< orphan*/ * btu_l2cap_alarm_hash_map ; 
 int /*<<< orphan*/  btu_l2cap_alarm_lock ; 
 int /*<<< orphan*/ * btu_oneshot_alarm_hash_map ; 
 int /*<<< orphan*/  btu_oneshot_alarm_lock ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * btu_thread ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(void)
{
#if BTU_DYNAMIC_MEMORY
    FREE_AND_RESET(btu_cb_ptr);
#endif
    FUNC1();

    FUNC2(btu_general_alarm_hash_map);
    FUNC3(&btu_general_alarm_lock);

    FUNC2(btu_oneshot_alarm_hash_map);
    FUNC3(&btu_oneshot_alarm_lock);

    FUNC2(btu_l2cap_alarm_hash_map);
    FUNC3(&btu_l2cap_alarm_lock);

    if (btu_thread) {
        FUNC4(btu_thread);
        btu_thread = NULL;
    }

    btu_general_alarm_hash_map = NULL;
    btu_oneshot_alarm_hash_map = NULL;
    btu_l2cap_alarm_hash_map = NULL;
}