
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_2__ {scalar_t__* btm_scn; } ;


 int BTM_MAX_SCN ;
 int BTM_TRACE_DEBUG (char*) ;
 scalar_t__ TRUE ;
 TYPE_1__ btm_cb ;

UINT8 BTM_AllocateSCN(void)
{
    UINT8 x;
    BTM_TRACE_DEBUG ("BTM_AllocateSCN\n");
    for (x = 1; x < BTM_MAX_SCN; x++) {
        if (!btm_cb.btm_scn[x - 1]) {
            btm_cb.btm_scn[x - 1] = TRUE;
            return x;
        }
    }
    return (0);
}
