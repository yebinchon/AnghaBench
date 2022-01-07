
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* IsJavaWindow ) (int ) ;} ;
typedef int HWND ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ TRUE ;
 int stub1 (int ) ;
 TYPE_1__ theAccessBridge ;
 scalar_t__ theAccessBridgeInitializedFlag ;

BOOL IsJavaWindow(HWND window) {
        if (theAccessBridgeInitializedFlag == TRUE) {
                        BOOL ret ;
                        ret = theAccessBridge.IsJavaWindow(window);
            return ret ;

        }
        return FALSE;
    }
