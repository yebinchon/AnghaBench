
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* GetAccessibleSelectionFromContext ) (long,int ,int) ;} ;
typedef int JOBJECT64 ;
typedef int AccessibleSelection ;


 scalar_t__ TRUE ;
 int stub1 (long,int ,int) ;
 TYPE_1__ theAccessBridge ;
 scalar_t__ theAccessBridgeInitializedFlag ;

JOBJECT64 GetAccessibleSelectionFromContext(long vmID, AccessibleSelection as, int i) {
        if (theAccessBridgeInitializedFlag == TRUE) {
            return theAccessBridge.GetAccessibleSelectionFromContext(vmID, as, i);
        }
        return (JOBJECT64) 0;
    }
