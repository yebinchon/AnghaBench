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
typedef  scalar_t__ IOReturn ;
typedef  int IOPMAssertionID ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ kIOReturnSuccess ; 

void FUNC4(void *opaque)
{
#ifdef __APPLE__
    if (opaque == NULL)
    {
        hb_error("hb_system_sleep: opaque is NULL");
        return;
    }

    IOPMAssertionID *assertionID = (IOPMAssertionID*)opaque;
    if (*assertionID == -1)
    {
        // nothing to do
        return;
    }

    IOReturn success = IOPMAssertionRelease(*assertionID);
    if (success == kIOReturnSuccess)
    {
        hb_deep_log(3,
                    "hb_system_sleep: assertion %d released, sleep allowed",
                    *assertionID);
        *assertionID = -1;
    }
    else
    {
        hb_log("hb_system_sleep: failed to allow system sleep");
    }
#endif
}