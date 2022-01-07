
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* GetAccessibleContextWithFocus ) (int ,long*,int *) ;} ;
typedef int HWND ;
typedef int BOOL ;
typedef int AccessibleContext ;


 int FALSE ;
 scalar_t__ TRUE ;
 int stub1 (int ,long*,int *) ;
 TYPE_1__ theAccessBridge ;
 scalar_t__ theAccessBridgeInitializedFlag ;

BOOL GetAccessibleContextWithFocus(HWND window, long *vmID, AccessibleContext *ac) {
        if (theAccessBridgeInitializedFlag == TRUE) {
            return theAccessBridge.GetAccessibleContextWithFocus(window, vmID, ac);
        }
        return FALSE;
    }
