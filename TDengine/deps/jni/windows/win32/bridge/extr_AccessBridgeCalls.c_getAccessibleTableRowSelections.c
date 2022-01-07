
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int jint ;
struct TYPE_2__ {int (* getAccessibleTableRowSelections ) (long,int ,int ,int *) ;} ;
typedef int BOOL ;
typedef int AccessibleTable ;


 int FALSE ;
 scalar_t__ TRUE ;
 int stub1 (long,int ,int ,int *) ;
 TYPE_1__ theAccessBridge ;
 scalar_t__ theAccessBridgeInitializedFlag ;

BOOL getAccessibleTableRowSelections(long vmID, AccessibleTable table, jint count, jint *selections) {
        if (theAccessBridgeInitializedFlag == TRUE) {
            return theAccessBridge.getAccessibleTableRowSelections(vmID, table, count, selections);
        }
        return FALSE;
    }
