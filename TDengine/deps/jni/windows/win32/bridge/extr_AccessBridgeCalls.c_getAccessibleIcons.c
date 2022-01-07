
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* getAccessibleIcons ) (long,int ,int *) ;} ;
typedef int BOOL ;
typedef int AccessibleIcons ;
typedef int AccessibleContext ;


 int FALSE ;
 scalar_t__ TRUE ;
 int stub1 (long,int ,int *) ;
 TYPE_1__ theAccessBridge ;
 scalar_t__ theAccessBridgeInitializedFlag ;

BOOL getAccessibleIcons(long vmID, AccessibleContext accessibleContext,
                            AccessibleIcons *icons) {
        if (theAccessBridgeInitializedFlag == TRUE) {
            return theAccessBridge.getAccessibleIcons(vmID, accessibleContext, icons);
        }
        return FALSE;
    }
