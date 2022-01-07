
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_2__ {int (* getParentWithRole ) (long const,int const,int const*) ;} ;
typedef int AccessibleContext ;


 scalar_t__ TRUE ;
 int stub1 (long const,int const,int const*) ;
 TYPE_1__ theAccessBridge ;
 scalar_t__ theAccessBridgeInitializedFlag ;

AccessibleContext getParentWithRole (const long vmID, const AccessibleContext accessibleContext,
                                         const wchar_t *role) {

        if (theAccessBridgeInitializedFlag == TRUE) {
            return theAccessBridge.getParentWithRole(vmID, accessibleContext, role);
        }
        return (AccessibleContext)0;
    }
