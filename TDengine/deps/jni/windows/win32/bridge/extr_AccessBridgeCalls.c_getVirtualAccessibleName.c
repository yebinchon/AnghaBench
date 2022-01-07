
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_2__ {int (* getVirtualAccessibleName ) (long const,int const,int *,int) ;} ;
typedef int BOOL ;
typedef int AccessibleContext ;


 int FALSE ;
 scalar_t__ TRUE ;
 int stub1 (long const,int const,int *,int) ;
 TYPE_1__ theAccessBridge ;
 scalar_t__ theAccessBridgeInitializedFlag ;

BOOL getVirtualAccessibleName(const long vmID, const AccessibleContext accessibleContext,
                                  wchar_t *name, int len) {
        if (theAccessBridgeInitializedFlag == TRUE) {
            return theAccessBridge.getVirtualAccessibleName(vmID, accessibleContext, name, len);
        }
        return FALSE;
    }
