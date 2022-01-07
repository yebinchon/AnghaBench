
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* GetVersionInfo ) (long,int *) ;} ;
typedef int BOOL ;
typedef int AccessBridgeVersionInfo ;


 int FALSE ;
 scalar_t__ TRUE ;
 int stub1 (long,int *) ;
 TYPE_1__ theAccessBridge ;
 scalar_t__ theAccessBridgeInitializedFlag ;

BOOL GetVersionInfo(long vmID, AccessBridgeVersionInfo *info) {
        if (theAccessBridgeInitializedFlag == TRUE) {
            return theAccessBridge.GetVersionInfo(vmID, info);
        }
        return FALSE;
    }
