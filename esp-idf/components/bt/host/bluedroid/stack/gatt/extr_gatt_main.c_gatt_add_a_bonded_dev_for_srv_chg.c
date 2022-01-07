
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {void* srv_changed; int bda; } ;
struct TYPE_10__ {TYPE_1__ srv_chg; } ;
typedef TYPE_3__ tGATTS_SRV_CHG_REQ ;
struct TYPE_11__ {void* srv_changed; int bda; } ;
typedef TYPE_4__ tGATTS_SRV_CHG ;
struct TYPE_9__ {int (* p_srv_chg_callback ) (int ,TYPE_3__*,int *) ;} ;
struct TYPE_12__ {TYPE_2__ cb_info; } ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 void* FALSE ;
 int GATTS_SRV_CHG_CMD_ADD_CLIENT ;
 int * gatt_add_srv_chg_clt (TYPE_4__*) ;
 TYPE_6__ gatt_cb ;
 int memcpy (int ,int ,int ) ;
 int stub1 (int ,TYPE_3__*,int *) ;

void gatt_add_a_bonded_dev_for_srv_chg (BD_ADDR bda)
{
    tGATTS_SRV_CHG_REQ req;
    tGATTS_SRV_CHG srv_chg_clt;

    memcpy(srv_chg_clt.bda, bda, BD_ADDR_LEN);
    srv_chg_clt.srv_changed = FALSE;
    if (gatt_add_srv_chg_clt(&srv_chg_clt) != ((void*)0)) {
        memcpy(req.srv_chg.bda, bda, BD_ADDR_LEN);
        req.srv_chg.srv_changed = FALSE;
        if (gatt_cb.cb_info.p_srv_chg_callback) {
            (*gatt_cb.cb_info.p_srv_chg_callback)(GATTS_SRV_CHG_CMD_ADD_CLIENT, &req, ((void*)0));
        }
    }
}
