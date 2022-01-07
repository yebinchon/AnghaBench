
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* getAccessibleActions ) (long,int ,int *) ;} ;
typedef int BOOL ;
typedef int AccessibleContext ;
typedef int AccessibleActions ;


 int FALSE ;
 scalar_t__ TRUE ;
 int stub1 (long,int ,int *) ;
 TYPE_1__ theAccessBridge ;
 scalar_t__ theAccessBridgeInitializedFlag ;

BOOL getAccessibleActions(long vmID, AccessibleContext accessibleContext,
                              AccessibleActions *actions) {
        if (theAccessBridgeInitializedFlag == TRUE) {
            return theAccessBridge.getAccessibleActions(vmID, accessibleContext, actions);
        }
        return FALSE;
    }
