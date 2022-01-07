
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_2__ {scalar_t__* btm_scn; } ;
typedef scalar_t__ BOOLEAN ;


 int BTM_MAX_SCN ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 TYPE_1__ btm_cb ;

BOOLEAN BTM_TryAllocateSCN(UINT8 scn)
{
    if (scn >= BTM_MAX_SCN) {
        return FALSE;
    }


    if (!btm_cb.btm_scn[scn - 1]) {
        btm_cb.btm_scn[scn - 1] = TRUE;
        return TRUE;
    }

    return (FALSE);
}
