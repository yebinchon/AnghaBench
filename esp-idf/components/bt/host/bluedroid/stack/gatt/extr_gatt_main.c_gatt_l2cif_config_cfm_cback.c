
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ result; } ;
typedef TYPE_1__ tL2CAP_CFG_INFO ;
struct TYPE_9__ {int ch_flags; int peer_bda; } ;
typedef TYPE_2__ tGATT_TCB ;
typedef int tGATTS_SRV_CHG ;
typedef int UINT16 ;


 scalar_t__ GATT_CH_CFG ;
 int GATT_CH_OPEN ;
 int GATT_L2C_CFG_CFM_DONE ;
 int GATT_L2C_CFG_IND_DONE ;
 scalar_t__ L2CAP_CFG_OK ;
 int L2CA_DisconnectReq (int ) ;
 scalar_t__ btm_sec_is_a_bonded_dev (int ) ;
 int gatt_add_a_bonded_dev_for_srv_chg (int ) ;
 int gatt_chk_srv_chg (int *) ;
 TYPE_2__* gatt_find_tcb_by_cid (int ) ;
 scalar_t__ gatt_get_ch_state (TYPE_2__*) ;
 int * gatt_is_bda_in_the_srv_chg_clt_list (int ) ;
 int gatt_send_conn_cback (TYPE_2__*) ;
 int gatt_set_ch_state (TYPE_2__*,int ) ;

void gatt_l2cif_config_cfm_cback(UINT16 lcid, tL2CAP_CFG_INFO *p_cfg)
{
    tGATT_TCB *p_tcb;
    tGATTS_SRV_CHG *p_srv_chg_clt = ((void*)0);


    if ((p_tcb = gatt_find_tcb_by_cid(lcid)) != ((void*)0)) {

        if ( gatt_get_ch_state(p_tcb) == GATT_CH_CFG) {

            if (p_cfg->result == L2CAP_CFG_OK) {

                p_tcb->ch_flags |= GATT_L2C_CFG_CFM_DONE;


                if (p_tcb->ch_flags & GATT_L2C_CFG_IND_DONE) {
                    gatt_set_ch_state(p_tcb, GATT_CH_OPEN);

                    if ((p_srv_chg_clt = gatt_is_bda_in_the_srv_chg_clt_list(p_tcb->peer_bda)) != ((void*)0)) {

                        gatt_chk_srv_chg(p_srv_chg_clt);

                    } else {
                        if (btm_sec_is_a_bonded_dev(p_tcb->peer_bda)) {
                            gatt_add_a_bonded_dev_for_srv_chg(p_tcb->peer_bda);
                        }
                    }


                    gatt_send_conn_cback(p_tcb);
                }
            }

            else {

                L2CA_DisconnectReq(lcid);
            }
        }
    }
}
