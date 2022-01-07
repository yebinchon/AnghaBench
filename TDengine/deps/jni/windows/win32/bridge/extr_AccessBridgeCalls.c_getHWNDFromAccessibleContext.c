
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* getHWNDFromAccessibleContext ) (long,int ) ;} ;
typedef int JOBJECT64 ;
typedef int HWND ;


 scalar_t__ TRUE ;
 int stub1 (long,int ) ;
 TYPE_1__ theAccessBridge ;
 scalar_t__ theAccessBridgeInitializedFlag ;

HWND getHWNDFromAccessibleContext(long vmID, JOBJECT64 accesibleContext) {
        if (theAccessBridgeInitializedFlag == TRUE) {
            return theAccessBridge.getHWNDFromAccessibleContext(vmID, accesibleContext);
        }
        return (HWND)0;
    }
