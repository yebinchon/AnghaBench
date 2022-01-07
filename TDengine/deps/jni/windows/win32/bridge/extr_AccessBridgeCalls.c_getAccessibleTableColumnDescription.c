
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int jint ;
struct TYPE_2__ {int (* getAccessibleTableColumnDescription ) (long,int ,int ) ;} ;
typedef int AccessibleContext ;


 scalar_t__ TRUE ;
 int stub1 (long,int ,int ) ;
 TYPE_1__ theAccessBridge ;
 scalar_t__ theAccessBridgeInitializedFlag ;

AccessibleContext getAccessibleTableColumnDescription(long vmID, AccessibleContext acParent, jint column) {
        if (theAccessBridgeInitializedFlag == TRUE) {
            return theAccessBridge.getAccessibleTableColumnDescription(vmID, acParent, column);
        }
        return (AccessibleContext)0;
    }
