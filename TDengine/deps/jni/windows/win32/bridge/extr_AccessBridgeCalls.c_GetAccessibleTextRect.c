
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int jint ;
struct TYPE_2__ {int (* GetAccessibleTextRect ) (long,int ,int *,int ) ;} ;
typedef int BOOL ;
typedef int AccessibleTextRectInfo ;
typedef int AccessibleText ;


 int FALSE ;
 scalar_t__ TRUE ;
 int stub1 (long,int ,int *,int ) ;
 TYPE_1__ theAccessBridge ;
 scalar_t__ theAccessBridgeInitializedFlag ;

BOOL GetAccessibleTextRect(long vmID, AccessibleText at, AccessibleTextRectInfo *rectInfo, jint index) {
        if (theAccessBridgeInitializedFlag == TRUE) {
            return theAccessBridge.GetAccessibleTextRect(vmID, at, rectInfo, index);
        }
        return FALSE;
    }
