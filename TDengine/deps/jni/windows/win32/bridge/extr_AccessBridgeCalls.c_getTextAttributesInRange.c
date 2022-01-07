
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* getTextAttributesInRange ) (long const,int const,int const,int const,int *,short*) ;} ;
typedef int BOOL ;
typedef int AccessibleTextAttributesInfo ;
typedef int AccessibleContext ;


 int FALSE ;
 scalar_t__ TRUE ;
 int stub1 (long const,int const,int const,int const,int *,short*) ;
 TYPE_1__ theAccessBridge ;
 scalar_t__ theAccessBridgeInitializedFlag ;

BOOL getTextAttributesInRange(const long vmID, const AccessibleContext accessibleContext,
                                  const int startIndex, const int endIndex,
                                  AccessibleTextAttributesInfo *attributes, short *len) {
        if (theAccessBridgeInitializedFlag == TRUE) {
            return theAccessBridge.getTextAttributesInRange(vmID, accessibleContext, startIndex,
                                                            endIndex, attributes, len);
        }
        return FALSE;
    }
