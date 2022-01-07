
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_2__ {int * btm_scn; } ;
typedef int BOOLEAN ;


 int BTM_MAX_SCN ;
 int BTM_TRACE_DEBUG (char*) ;
 int FALSE ;
 int TRUE ;
 TYPE_1__ btm_cb ;

BOOLEAN BTM_FreeSCN(UINT8 scn)
{
    BTM_TRACE_DEBUG ("BTM_FreeSCN \n");
    if (scn <= BTM_MAX_SCN) {
        btm_cb.btm_scn[scn - 1] = FALSE;
        return (TRUE);
    } else {
        return (FALSE);
    }
    return (FALSE);
}
