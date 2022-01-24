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
struct TYPE_2__ {int /*<<< orphan*/  (* getHWNDFromAccessibleContext ) (long,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  JOBJECT64 ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (long,int /*<<< orphan*/ ) ; 
 TYPE_1__ theAccessBridge ; 
 scalar_t__ theAccessBridgeInitializedFlag ; 

HWND FUNC1(long vmID, JOBJECT64 accesibleContext) {
        if (theAccessBridgeInitializedFlag == TRUE) {
            return theAccessBridge.getHWNDFromAccessibleContext(vmID, accesibleContext);
        }
        return (HWND)0;
    }