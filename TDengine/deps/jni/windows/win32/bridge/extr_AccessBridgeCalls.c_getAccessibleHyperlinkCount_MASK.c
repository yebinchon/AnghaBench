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
typedef  int jint ;
struct TYPE_2__ {int (* getAccessibleHyperlinkCount ) (long const,int /*<<< orphan*/  const) ;} ;
typedef  int /*<<< orphan*/  AccessibleContext ;

/* Variables and functions */
 scalar_t__ TRUE ; 
 int FUNC0 (long const,int /*<<< orphan*/  const) ; 
 TYPE_1__ theAccessBridge ; 
 scalar_t__ theAccessBridgeInitializedFlag ; 

jint FUNC1(const long vmID,
                                     const AccessibleContext accessibleContext) {

        if (theAccessBridgeInitializedFlag == TRUE) {
            return theAccessBridge.getAccessibleHyperlinkCount(vmID, accessibleContext);
        }
        return -1;
    }