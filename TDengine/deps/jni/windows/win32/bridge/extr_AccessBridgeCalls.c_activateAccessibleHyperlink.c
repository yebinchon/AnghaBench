
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* activateAccessibleHyperlink ) (long,int ,int ) ;} ;
typedef int BOOL ;
typedef int AccessibleHyperlink ;
typedef int AccessibleContext ;


 int FALSE ;
 scalar_t__ TRUE ;
 int stub1 (long,int ,int ) ;
 TYPE_1__ theAccessBridge ;
 scalar_t__ theAccessBridgeInitializedFlag ;

BOOL activateAccessibleHyperlink(long vmID, AccessibleContext accessibleContext,
                                     AccessibleHyperlink accessibleHyperlink) {
        if (theAccessBridgeInitializedFlag == TRUE) {
            return theAccessBridge.activateAccessibleHyperlink(vmID, accessibleContext, accessibleHyperlink);
        }
        return FALSE;
    }
