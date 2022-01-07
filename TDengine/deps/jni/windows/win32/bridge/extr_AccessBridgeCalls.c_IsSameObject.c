
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* IsSameObject ) (long,int ,int ) ;} ;
typedef int JOBJECT64 ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ TRUE ;
 int stub1 (long,int ,int ) ;
 TYPE_1__ theAccessBridge ;
 scalar_t__ theAccessBridgeInitializedFlag ;

BOOL IsSameObject(long vmID, JOBJECT64 obj1, JOBJECT64 obj2) {
        if (theAccessBridgeInitializedFlag == TRUE) {
            return theAccessBridge.IsSameObject(vmID, obj1, obj2);
        }
        return FALSE;
    }
