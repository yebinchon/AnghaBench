
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int jint ;
struct TYPE_2__ {int (* GetAccessibleChildFromContext ) (long,int ,int ) ;} ;
typedef int AccessibleContext ;


 scalar_t__ TRUE ;
 int stub1 (long,int ,int ) ;
 TYPE_1__ theAccessBridge ;
 scalar_t__ theAccessBridgeInitializedFlag ;

AccessibleContext GetAccessibleChildFromContext(long vmID, AccessibleContext ac, jint index) {
        if (theAccessBridgeInitializedFlag == TRUE) {
            return theAccessBridge.GetAccessibleChildFromContext(vmID, ac, index);
        }
        return (AccessibleContext) 0;
    }
