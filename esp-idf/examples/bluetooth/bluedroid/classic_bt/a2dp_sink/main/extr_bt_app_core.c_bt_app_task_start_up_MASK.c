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
typedef  int /*<<< orphan*/  bt_app_msg_t ;

/* Variables and functions */
 int /*<<< orphan*/  bt_app_task_handler ; 
 scalar_t__ configMAX_PRIORITIES ; 
 int /*<<< orphan*/  s_bt_app_task_handle ; 
 int /*<<< orphan*/  s_bt_app_task_queue ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 

void FUNC2(void)
{
    s_bt_app_task_queue = FUNC0(10, sizeof(bt_app_msg_t));
    FUNC1(bt_app_task_handler, "BtAppT", 3072, NULL, configMAX_PRIORITIES - 3, &s_bt_app_task_handle);
    return;
}