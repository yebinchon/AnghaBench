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
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ TRUE ; 
 scalar_t__ theAccessBridgeInitializedFlag ; 
 scalar_t__ theAccessBridgeInstance ; 

BOOL FUNC2() {
        BOOL result;
        DWORD error;
        theAccessBridgeInitializedFlag = FALSE;
        if (theAccessBridgeInstance != (HANDLE) 0) {
            result = FUNC0(theAccessBridgeInstance);
            if (result != TRUE) {
                error = FUNC1();
            }
            return TRUE;
        }
        return FALSE;
    }