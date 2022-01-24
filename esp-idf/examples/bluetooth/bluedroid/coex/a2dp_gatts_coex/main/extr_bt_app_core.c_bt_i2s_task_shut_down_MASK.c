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
 int /*<<< orphan*/ * s_bt_i2s_task_handle ; 
 int /*<<< orphan*/ * s_ringbuf_i2s ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(void)
{
    if (s_bt_i2s_task_handle) {
        FUNC1(s_bt_i2s_task_handle);
        s_bt_i2s_task_handle = NULL;
    }

    if (s_ringbuf_i2s) {
        FUNC0(s_ringbuf_i2s);
        s_ringbuf_i2s = NULL;
    }
}