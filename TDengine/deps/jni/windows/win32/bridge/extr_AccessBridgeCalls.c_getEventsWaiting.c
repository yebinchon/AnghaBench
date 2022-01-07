
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* getEventsWaiting ) () ;} ;


 int FALSE ;
 scalar_t__ TRUE ;
 int stub1 () ;
 TYPE_1__ theAccessBridge ;
 scalar_t__ theAccessBridgeInitializedFlag ;

int getEventsWaiting() {
        if (theAccessBridgeInitializedFlag == TRUE) {
            return theAccessBridge.getEventsWaiting();
        }
        return FALSE;
    }
