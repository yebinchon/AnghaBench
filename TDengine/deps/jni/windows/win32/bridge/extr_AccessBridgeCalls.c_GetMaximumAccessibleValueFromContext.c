
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_2__ {int (* GetMaximumAccessibleValueFromContext ) (long,int ,int *,short) ;} ;
typedef int BOOL ;
typedef int AccessibleValue ;


 int FALSE ;
 scalar_t__ TRUE ;
 int stub1 (long,int ,int *,short) ;
 TYPE_1__ theAccessBridge ;
 scalar_t__ theAccessBridgeInitializedFlag ;

BOOL GetMaximumAccessibleValueFromContext(long vmID, AccessibleValue av, wchar_t *value, short len) {
        if (theAccessBridgeInitializedFlag == TRUE) {
            return theAccessBridge.GetMaximumAccessibleValueFromContext(vmID, av, value, len);
        }
        return FALSE;
    }
