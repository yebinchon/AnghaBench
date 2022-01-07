
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* GetAccessibleSelectionCountFromContext ) (long,int ) ;} ;
typedef int AccessibleSelection ;


 scalar_t__ TRUE ;
 int stub1 (long,int ) ;
 TYPE_1__ theAccessBridge ;
 scalar_t__ theAccessBridgeInitializedFlag ;

int GetAccessibleSelectionCountFromContext(long vmID, AccessibleSelection as) {
        if (theAccessBridgeInitializedFlag == TRUE) {
            return theAccessBridge.GetAccessibleSelectionCountFromContext(vmID, as);
        }
        return -1;
    }
