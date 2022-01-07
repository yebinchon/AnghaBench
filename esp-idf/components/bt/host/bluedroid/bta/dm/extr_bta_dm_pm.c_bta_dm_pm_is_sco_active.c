
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int count; TYPE_1__* conn_srvc; } ;
struct TYPE_3__ {scalar_t__ id; scalar_t__ state; } ;
typedef int BOOLEAN ;


 int APPL_TRACE_DEBUG (char*,int ) ;
 scalar_t__ BTA_ID_AG ;
 scalar_t__ BTA_SYS_SCO_OPEN ;
 int FALSE ;
 int TRUE ;
 TYPE_2__ bta_dm_conn_srvcs ;

__attribute__((used)) static BOOLEAN bta_dm_pm_is_sco_active (void)
{
    int j;
    BOOLEAN bScoActive = FALSE;

    for (j = 0; j < bta_dm_conn_srvcs.count ; j++) {

        if ( (bta_dm_conn_srvcs.conn_srvc[j].id == BTA_ID_AG ) && (bta_dm_conn_srvcs.conn_srvc[j].state == BTA_SYS_SCO_OPEN) ) {
            bScoActive = TRUE;
            break;
        }
    }

    APPL_TRACE_DEBUG("bta_dm_is_sco_active: SCO active: %d", bScoActive);
    return bScoActive;
}
