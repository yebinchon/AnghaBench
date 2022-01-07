
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
typedef int jint ;
struct TYPE_2__ {int (* GetAccessibleTextRange ) (long,int ,int ,int ,int *,short) ;} ;
typedef int BOOL ;
typedef int AccessibleText ;


 int FALSE ;
 scalar_t__ TRUE ;
 int stub1 (long,int ,int ,int ,int *,short) ;
 TYPE_1__ theAccessBridge ;
 scalar_t__ theAccessBridgeInitializedFlag ;

BOOL GetAccessibleTextRange(long vmID, AccessibleText at, jint start, jint end, wchar_t *text, short len) {
        if (theAccessBridgeInitializedFlag == TRUE) {
            return theAccessBridge.GetAccessibleTextRange(vmID, at, start, end, text, len);
        }
        return FALSE;
    }
