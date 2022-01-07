
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int jint ;
struct TYPE_2__ {int (* getAccessibleTableIndex ) (long,int ,int,int) ;} ;
typedef int AccessibleTable ;


 scalar_t__ TRUE ;
 int stub1 (long,int ,int,int) ;
 TYPE_1__ theAccessBridge ;
 scalar_t__ theAccessBridgeInitializedFlag ;

jint
    getAccessibleTableIndex(long vmID, AccessibleTable table, jint row, jint column) {
        if (theAccessBridgeInitializedFlag == TRUE) {
            return theAccessBridge.getAccessibleTableIndex(vmID, table, row, column);
        }
        return -1;
    }
