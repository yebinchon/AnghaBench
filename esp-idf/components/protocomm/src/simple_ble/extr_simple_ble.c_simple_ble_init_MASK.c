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
typedef  int /*<<< orphan*/  simple_ble_cfg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ FUNC1 (int) ; 

simple_ble_cfg_t *FUNC2(void)
{
    simple_ble_cfg_t *ble_cfg_p = (simple_ble_cfg_t *) FUNC1(sizeof(simple_ble_cfg_t));
    if (ble_cfg_p == NULL) {
        FUNC0(TAG, "No memory for simple_ble_cfg_t");
        return NULL;
    }
    return ble_cfg_p;
}