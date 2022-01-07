
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int jint ;
struct TYPE_2__ {int (* doAccessibleActions ) (long,int ,int *,int *) ;} ;
typedef int BOOL ;
typedef int AccessibleContext ;
typedef int AccessibleActionsToDo ;


 int FALSE ;
 scalar_t__ TRUE ;
 int stub1 (long,int ,int *,int *) ;
 TYPE_1__ theAccessBridge ;
 scalar_t__ theAccessBridgeInitializedFlag ;

BOOL doAccessibleActions(long vmID, AccessibleContext accessibleContext,
                             AccessibleActionsToDo *actionsToDo, jint *failure) {
        if (theAccessBridgeInitializedFlag == TRUE) {
            return theAccessBridge.doAccessibleActions(vmID, accessibleContext, actionsToDo, failure);
        }
        return FALSE;
    }
