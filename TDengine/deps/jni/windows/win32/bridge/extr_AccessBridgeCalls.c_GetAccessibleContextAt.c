
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int jint ;
struct TYPE_2__ {int (* GetAccessibleContextAt ) (long,int ,int ,int ,int *) ;} ;
typedef int BOOL ;
typedef int AccessibleContext ;


 int FALSE ;
 scalar_t__ TRUE ;
 int stub1 (long,int ,int ,int ,int *) ;
 TYPE_1__ theAccessBridge ;
 scalar_t__ theAccessBridgeInitializedFlag ;

BOOL GetAccessibleContextAt(long vmID, AccessibleContext acParent,
                                jint x, jint y, AccessibleContext *ac) {
        if (theAccessBridgeInitializedFlag == TRUE) {
            return theAccessBridge.GetAccessibleContextAt(vmID, acParent, x, y, ac);
        }
        return FALSE;
    }
