
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int jint ;
struct TYPE_2__ {int (* getAccessibleHyperlink ) (long const,int const,int const,int *) ;} ;
typedef int BOOL ;
typedef int AccessibleHypertext ;
typedef int AccessibleHyperlinkInfo ;


 int FALSE ;
 scalar_t__ TRUE ;
 int stub1 (long const,int const,int const,int *) ;
 TYPE_1__ theAccessBridge ;
 scalar_t__ theAccessBridgeInitializedFlag ;

BOOL getAccessibleHyperlink(const long vmID,
                                const AccessibleHypertext hypertext,
                                const jint nIndex,
                                          AccessibleHyperlinkInfo *hyperlinkInfo) {

        if (theAccessBridgeInitializedFlag == TRUE) {
            return theAccessBridge.getAccessibleHyperlink(vmID,
                                                          hypertext,
                                                          nIndex,
                                                          hyperlinkInfo);
        }
        return FALSE;
    }
