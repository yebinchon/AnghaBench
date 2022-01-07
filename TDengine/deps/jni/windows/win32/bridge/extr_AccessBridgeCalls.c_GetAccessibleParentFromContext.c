
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* GetAccessibleParentFromContext ) (long,int ) ;} ;
typedef int AccessibleContext ;


 scalar_t__ TRUE ;
 int stub1 (long,int ) ;
 TYPE_1__ theAccessBridge ;
 scalar_t__ theAccessBridgeInitializedFlag ;

AccessibleContext GetAccessibleParentFromContext(long vmID, AccessibleContext ac) {
        if (theAccessBridgeInitializedFlag == TRUE) {
            return theAccessBridge.GetAccessibleParentFromContext(vmID, ac);
        }
        return (AccessibleContext) 0;
    }
