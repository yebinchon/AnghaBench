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
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4 (UINT8 *p)
{
    UINT8       status;
    UINT16      handle;
    UINT8       current_mode;
    UINT16      interval;

    FUNC1 (status, p);

    FUNC0 (handle, p);
    FUNC1 (current_mode, p);
    FUNC0 (interval, p);
#if BTM_SCO_WAKE_PARKED_LINK == TRUE
    FUNC3 (status, handle);
#endif
    FUNC2 (status, handle, current_mode, interval);

    /*
    #if (HID_DEV_INCLUDED == TRUE) && (HID_DEV_PM_INCLUDED == TRUE)
        hidd_pm_proc_mode_change( status, current_mode, interval ) ;
    #endif
    */
}