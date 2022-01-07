
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int count; TYPE_1__* conn_srvc; } ;
struct TYPE_3__ {scalar_t__ id; int peer_bdaddr; int state; } ;
typedef int BOOLEAN ;


 int APPL_TRACE_DEBUG (char*,int ,int ) ;
 int BTA_DM_PM_NO_ACTION ;
 int BTA_DM_PM_RESTART ;
 scalar_t__ BTA_ID_HH ;
 TYPE_2__ bta_dm_conn_srvcs ;
 int bta_dm_find_peer_device (int ) ;
 int bta_dm_pm_set_mode (int ,int ,int ) ;
 int bta_dm_pm_set_sniff_policy (int ,int ) ;

__attribute__((used)) static void bta_dm_pm_hid_check(BOOLEAN bScoActive)
{
    int j;


    for (j = 0; j < bta_dm_conn_srvcs.count ; j++) {

        if (bta_dm_conn_srvcs.conn_srvc[j].id == BTA_ID_HH ) {
            APPL_TRACE_DEBUG ("SCO status change(Active: %d), modify HID link policy. state: %d",
                              bScoActive, bta_dm_conn_srvcs.conn_srvc[j].state);
            bta_dm_pm_set_sniff_policy( bta_dm_find_peer_device(bta_dm_conn_srvcs.conn_srvc[j].peer_bdaddr), bScoActive);


            if (!bScoActive) {
                bta_dm_pm_set_mode(bta_dm_conn_srvcs.conn_srvc[j].peer_bdaddr, BTA_DM_PM_NO_ACTION,
                                   BTA_DM_PM_RESTART);
            }
        }
    }

}
