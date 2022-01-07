
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int bda; } ;
struct TYPE_8__ {TYPE_1__ srv_chg; } ;
typedef TYPE_3__ tGATTS_SRV_CHG_REQ ;
typedef int tGATTS_SRV_CHG ;
struct TYPE_7__ {int (* p_srv_chg_callback ) (int ,TYPE_3__*,int *) ;} ;
struct TYPE_9__ {int srv_chg_clt_q; TYPE_2__ cb_info; } ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 int GATTS_SRV_CHG_CMD_REMOVE_CLIENT ;
 int GATT_TRACE_DEBUG (char*) ;
 int fixed_queue_try_remove_from_queue (int ,int *) ;
 TYPE_5__ gatt_cb ;
 int * gatt_is_bda_in_the_srv_chg_clt_list (int ) ;
 int memcpy (int ,int ,int ) ;
 int osi_free (int ) ;
 int stub1 (int ,TYPE_3__*,int *) ;

void gatt_delete_dev_from_srv_chg_clt_list(BD_ADDR bd_addr)
{
    tGATTS_SRV_CHG *p_buf;
    tGATTS_SRV_CHG_REQ req;

    GATT_TRACE_DEBUG ("gatt_delete_dev_from_srv_chg_clt_list");
    if ((p_buf = gatt_is_bda_in_the_srv_chg_clt_list(bd_addr)) != ((void*)0)) {
        if (gatt_cb.cb_info.p_srv_chg_callback) {

            memcpy(req.srv_chg.bda, bd_addr, BD_ADDR_LEN);
            (*gatt_cb.cb_info.p_srv_chg_callback)(GATTS_SRV_CHG_CMD_REMOVE_CLIENT, &req, ((void*)0));
        }
        osi_free(fixed_queue_try_remove_from_queue(gatt_cb.srv_chg_clt_q,
                                                      p_buf));
    }

}
