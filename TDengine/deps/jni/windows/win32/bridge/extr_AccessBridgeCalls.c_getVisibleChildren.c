
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VisibleChildrenInfo ;
struct TYPE_2__ {int (* getVisibleChildren ) (long const,int const,int const,int *) ;} ;
typedef int BOOL ;
typedef int AccessibleContext ;


 int FALSE ;
 scalar_t__ TRUE ;
 int stub1 (long const,int const,int const,int *) ;
 TYPE_1__ theAccessBridge ;
 scalar_t__ theAccessBridgeInitializedFlag ;

BOOL getVisibleChildren(const long vmID, const AccessibleContext accessibleContext,
                            const int startIndex, VisibleChildrenInfo *visibleChildrenInfo) {
        if (theAccessBridgeInitializedFlag == TRUE) {
            return theAccessBridge.getVisibleChildren(vmID, accessibleContext, startIndex,
                                                      visibleChildrenInfo);
        }
        return FALSE;
    }
