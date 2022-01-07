
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ tBTA_SYS_CONN_STATUS ;
typedef scalar_t__ tBTA_PREF_ROLES ;
struct TYPE_5__ {scalar_t__ conn_state; scalar_t__ pref_role; int info; } ;
typedef TYPE_1__ tBTA_DM_PEER_DEVICE ;
typedef size_t UINT8 ;
struct TYPE_7__ {void* cur_av_count; } ;
struct TYPE_6__ {size_t app_id; size_t id; scalar_t__ cfg; } ;
typedef int BD_ADDR ;


 int APPL_TRACE_EVENT (char*,void*,scalar_t__) ;
 scalar_t__ BTA_ALL_APP_ID ;
 scalar_t__ BTA_DM_CONNECTED ;
 int BTA_DM_DI_AV_ACTIVE ;
 scalar_t__ BTA_DM_UNPAIRING ;
 size_t BTA_ID_AV ;
 size_t BTA_ID_AVK ;
 scalar_t__ BTA_SYS_CONN_BUSY ;
 scalar_t__ BTA_SYS_CONN_IDLE ;
 scalar_t__ BTA_SYS_CONN_OPEN ;
 int FALSE ;
 int bta_dm_adjust_roles (int ) ;
 TYPE_4__ bta_dm_cb ;
 TYPE_1__* bta_dm_find_peer_device (int ) ;
 void* bta_dm_get_av_count () ;
 TYPE_2__* p_bta_dm_rm_cfg ;

__attribute__((used)) static void bta_dm_rm_cback(tBTA_SYS_CONN_STATUS status, UINT8 id, UINT8 app_id, BD_ADDR peer_addr)
{
    UINT8 j;
    tBTA_PREF_ROLES role;
    tBTA_DM_PEER_DEVICE *p_dev;

    p_dev = bta_dm_find_peer_device(peer_addr);
    if ( status == BTA_SYS_CONN_OPEN) {
        if (p_dev) {




            if (p_dev->conn_state != BTA_DM_UNPAIRING) {
                p_dev->conn_state = BTA_DM_CONNECTED;
            }

            for (j = 1; j <= p_bta_dm_rm_cfg[0].app_id; j++) {
                if (((p_bta_dm_rm_cfg[j].app_id == app_id) || (p_bta_dm_rm_cfg[j].app_id == BTA_ALL_APP_ID))
                        && (p_bta_dm_rm_cfg[j].id == id)) {
                    role = p_bta_dm_rm_cfg[j].cfg;

                    if (role > p_dev->pref_role ) {
                        p_dev->pref_role = role;
                    }
                    break;
                }
            }
        }
    }

    if ((BTA_ID_AV == id) || (BTA_ID_AVK == id)) {
        if ( status == BTA_SYS_CONN_BUSY) {
            if (p_dev) {
                p_dev->info |= BTA_DM_DI_AV_ACTIVE;
            }

            if (BTA_ID_AV == id) {
                bta_dm_cb.cur_av_count = bta_dm_get_av_count();
            }
        } else if ( status == BTA_SYS_CONN_IDLE) {
            if (p_dev) {
                p_dev->info &= ~BTA_DM_DI_AV_ACTIVE;
            }


            if (BTA_ID_AV == id) {
                bta_dm_cb.cur_av_count = bta_dm_get_av_count();
            }
        }
        APPL_TRACE_EVENT("bta_dm_rm_cback:%d, status:%d", bta_dm_cb.cur_av_count, status);
    }




    if ((status != BTA_SYS_CONN_BUSY) && (status != BTA_SYS_CONN_IDLE)) {
        bta_dm_adjust_roles(FALSE);
    }
}
