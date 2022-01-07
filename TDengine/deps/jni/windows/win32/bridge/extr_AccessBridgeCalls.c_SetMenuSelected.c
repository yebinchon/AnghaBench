
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* SetMenuSelected ) (int ) ;} ;
typedef int AccessBridge_MenuSelectedFP ;


 scalar_t__ TRUE ;
 int stub1 (int ) ;
 TYPE_1__ theAccessBridge ;
 scalar_t__ theAccessBridgeInitializedFlag ;

void SetMenuSelected(AccessBridge_MenuSelectedFP fp) {
        if (theAccessBridgeInitializedFlag == TRUE) {
            theAccessBridge.SetMenuSelected(fp);
        }
    }
