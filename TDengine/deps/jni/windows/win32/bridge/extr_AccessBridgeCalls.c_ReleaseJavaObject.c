
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* ReleaseJavaObject ) (long,int ) ;} ;
typedef int Java_Object ;


 scalar_t__ TRUE ;
 int stub1 (long,int ) ;
 TYPE_1__ theAccessBridge ;
 scalar_t__ theAccessBridgeInitializedFlag ;

void ReleaseJavaObject(long vmID, Java_Object object) {
        if (theAccessBridgeInitializedFlag == TRUE) {
            theAccessBridge.ReleaseJavaObject(vmID, object);
        }
    }
