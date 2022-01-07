
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int jint ;
struct TYPE_2__ {int (* getAccessibleHypertextExt ) (long const,int const,int const,int *) ;} ;
typedef int BOOL ;
typedef int AccessibleHypertextInfo ;
typedef int AccessibleContext ;


 int FALSE ;
 scalar_t__ TRUE ;
 int stub1 (long const,int const,int const,int *) ;
 TYPE_1__ theAccessBridge ;
 scalar_t__ theAccessBridgeInitializedFlag ;

BOOL getAccessibleHypertextExt(const long vmID,
                                   const AccessibleContext accessibleContext,
                                   const jint nStartIndex,
                                             AccessibleHypertextInfo *hypertextInfo) {

        if (theAccessBridgeInitializedFlag == TRUE) {
            return theAccessBridge.getAccessibleHypertextExt(vmID,
                                                             accessibleContext,
                                                             nStartIndex,
                                                             hypertextInfo);
        }
        return FALSE;
    }
