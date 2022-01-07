
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int jint ;
struct TYPE_2__ {int (* GetAccessibleTextLineBounds ) (long,int ,int ,int *,int *) ;} ;
typedef int BOOL ;
typedef int AccessibleText ;


 int FALSE ;
 scalar_t__ TRUE ;
 int stub1 (long,int ,int ,int *,int *) ;
 TYPE_1__ theAccessBridge ;
 scalar_t__ theAccessBridgeInitializedFlag ;

BOOL GetAccessibleTextLineBounds(long vmID, AccessibleText at, jint index, jint *startIndex, jint *endIndex) {
        if (theAccessBridgeInitializedFlag == TRUE) {
            return theAccessBridge.GetAccessibleTextLineBounds(vmID, at, index, startIndex, endIndex);
        }
        return FALSE;
    }
