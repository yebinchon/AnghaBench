
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int jint ;
struct TYPE_2__ {int (* getAccessibleTableColumnSelectionCount ) (long,int ) ;} ;
typedef int AccessibleTable ;


 scalar_t__ TRUE ;
 int stub1 (long,int ) ;
 TYPE_1__ theAccessBridge ;
 scalar_t__ theAccessBridgeInitializedFlag ;

jint getAccessibleTableColumnSelectionCount(long vmID, AccessibleTable table) {
        if (theAccessBridgeInitializedFlag == TRUE) {
            return theAccessBridge.getAccessibleTableColumnSelectionCount(vmID, table);
        }
        return -1;
    }
