
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ device_type; } ;
struct TYPE_8__ {TYPE_2__ results; } ;
struct TYPE_9__ {scalar_t__ in_use; int scan_rsp; TYPE_3__ inq_info; } ;
typedef TYPE_4__ tINQ_DB_ENT ;
typedef scalar_t__ UINT16 ;
struct TYPE_6__ {TYPE_4__* inq_db; } ;
struct TYPE_10__ {TYPE_1__ btm_inq_vars; } ;


 scalar_t__ BTM_INQ_DB_SIZE ;
 scalar_t__ BT_DEVICE_TYPE_BLE ;
 scalar_t__ FALSE ;
 TYPE_5__ btm_cb ;

void btm_clear_all_pending_le_entry(void)
{
    UINT16 xx;
    tINQ_DB_ENT *p_ent = btm_cb.btm_inq_vars.inq_db;

    for (xx = 0; xx < BTM_INQ_DB_SIZE; xx++, p_ent++) {

        if ((p_ent->in_use) &&
                (p_ent->inq_info.results.device_type == BT_DEVICE_TYPE_BLE) &&
                !p_ent->scan_rsp) {
            p_ent->in_use = FALSE;
        }
    }
}
