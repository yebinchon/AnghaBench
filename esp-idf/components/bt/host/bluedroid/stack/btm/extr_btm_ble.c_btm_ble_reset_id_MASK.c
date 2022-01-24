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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ btm_ble_process_ir ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

void FUNC2( void )
{
    FUNC0 ("btm_ble_reset_id");

    /* regenrate Identity Root*/
    if (!FUNC1((void *)btm_ble_process_ir)) {
        FUNC0("Generating IR failed.");
    }
}