
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* getVisibleChildrenCount ) (long const,int const) ;} ;
typedef int AccessibleContext ;


 int FALSE ;
 scalar_t__ TRUE ;
 int stub1 (long const,int const) ;
 TYPE_1__ theAccessBridge ;
 scalar_t__ theAccessBridgeInitializedFlag ;

int getVisibleChildrenCount(const long vmID, const AccessibleContext accessibleContext) {
        if (theAccessBridgeInitializedFlag == TRUE) {
            return theAccessBridge.getVisibleChildrenCount(vmID, accessibleContext);
        }
        return FALSE;
    }
