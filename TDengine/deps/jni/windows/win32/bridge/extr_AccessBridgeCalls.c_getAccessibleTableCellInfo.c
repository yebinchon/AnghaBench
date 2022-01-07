
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int jint ;
struct TYPE_2__ {int (* getAccessibleTableCellInfo ) (long,int ,int ,int ,int *) ;} ;
typedef int BOOL ;
typedef int AccessibleTableCellInfo ;
typedef int AccessibleTable ;


 int FALSE ;
 scalar_t__ TRUE ;
 int stub1 (long,int ,int ,int ,int *) ;
 TYPE_1__ theAccessBridge ;
 scalar_t__ theAccessBridgeInitializedFlag ;

BOOL getAccessibleTableCellInfo(long vmID, AccessibleTable accessibleTable,
                                    jint row, jint column, AccessibleTableCellInfo *tableCellInfo) {
        if (theAccessBridgeInitializedFlag == TRUE) {
            return theAccessBridge.getAccessibleTableCellInfo(vmID, accessibleTable, row, column, tableCellInfo);
        }
        return FALSE;
    }
