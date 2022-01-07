
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* getAccessibleKeyBindings ) (long,int ,int *) ;} ;
typedef int BOOL ;
typedef int AccessibleKeyBindings ;
typedef int AccessibleContext ;


 int FALSE ;
 scalar_t__ TRUE ;
 int stub1 (long,int ,int *) ;
 TYPE_1__ theAccessBridge ;
 scalar_t__ theAccessBridgeInitializedFlag ;

BOOL getAccessibleKeyBindings(long vmID, AccessibleContext accessibleContext,
                                  AccessibleKeyBindings *keyBindings) {
        if (theAccessBridgeInitializedFlag == TRUE) {
            return theAccessBridge.getAccessibleKeyBindings(vmID, accessibleContext, keyBindings);
        }
        return FALSE;
    }
