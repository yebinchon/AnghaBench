
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int peer_bda; } ;
typedef TYPE_2__ tGATT_TCB ;
struct TYPE_12__ {int srv_chg; } ;
typedef TYPE_3__ tGATTS_SRV_CHG_REQ ;
struct TYPE_13__ {int srv_changed; } ;
typedef TYPE_4__ tGATTS_SRV_CHG ;
struct TYPE_10__ {int (* p_srv_chg_callback ) (int ,TYPE_3__*,int *) ;} ;
struct TYPE_14__ {TYPE_1__ cb_info; } ;


 int FALSE ;
 int GATTS_SRV_CHG_CMD_UPDATE_CLIENT ;
 int GATT_TRACE_DEBUG (char*) ;
 TYPE_9__ gatt_cb ;
 TYPE_4__* gatt_is_bda_in_the_srv_chg_clt_list (int ) ;
 int memcpy (int *,TYPE_4__*,int) ;
 int stub1 (int ,TYPE_3__*,int *) ;

__attribute__((used)) static void gatts_proc_srv_chg_ind_ack(tGATT_TCB *p_tcb )
{
    tGATTS_SRV_CHG_REQ req;
    tGATTS_SRV_CHG *p_buf = ((void*)0);

    GATT_TRACE_DEBUG("gatts_proc_srv_chg_ind_ack");

    if ((p_buf = gatt_is_bda_in_the_srv_chg_clt_list(p_tcb->peer_bda)) != ((void*)0)) {
        GATT_TRACE_DEBUG("NV update set srv chg = FALSE");
        p_buf->srv_changed = FALSE;
        memcpy(&req.srv_chg, p_buf, sizeof(tGATTS_SRV_CHG));
        if (gatt_cb.cb_info.p_srv_chg_callback) {
            (*gatt_cb.cb_info.p_srv_chg_callback)(GATTS_SRV_CHG_CMD_UPDATE_CLIENT, &req, ((void*)0));
        }
    }
}
