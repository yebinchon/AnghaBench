
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int jint ;
struct TYPE_2__ {int (* getAccessibleHypertextLinkIndex ) (long const,int const,int const) ;} ;
typedef int AccessibleHypertext ;


 scalar_t__ TRUE ;
 int stub1 (long const,int const,int const) ;
 TYPE_1__ theAccessBridge ;
 scalar_t__ theAccessBridgeInitializedFlag ;

jint getAccessibleHypertextLinkIndex(const long vmID,
                                         const AccessibleHypertext hypertext,
                                         const jint nIndex) {

        if (theAccessBridgeInitializedFlag == TRUE) {
            return theAccessBridge.getAccessibleHypertextLinkIndex(vmID,
                                                                   hypertext,
                                                                   nIndex);
        }
        return -1;
    }
