
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 scalar_t__ FreeLibrary (scalar_t__) ;
 int GetLastError () ;
 scalar_t__ TRUE ;
 scalar_t__ theAccessBridgeInitializedFlag ;
 scalar_t__ theAccessBridgeInstance ;

BOOL shutdownAccessBridge() {
        BOOL result;
        DWORD error;
        theAccessBridgeInitializedFlag = FALSE;
        if (theAccessBridgeInstance != (HANDLE) 0) {
            result = FreeLibrary(theAccessBridgeInstance);
            if (result != TRUE) {
                error = GetLastError();
            }
            return TRUE;
        }
        return FALSE;
    }
