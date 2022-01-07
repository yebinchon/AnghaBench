
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ mtu; int result; scalar_t__ mtu_present; } ;
typedef TYPE_1__ tL2CAP_CFG_INFO ;
struct TYPE_10__ {scalar_t__ payload_size; int ch_flags; int peer_bda; } ;
typedef TYPE_2__ tGATT_TCB ;
typedef int tGATTS_SRV_CHG ;
typedef int UINT16 ;


 int GATT_CH_OPEN ;
 int GATT_L2C_CFG_CFM_DONE ;
 int GATT_L2C_CFG_IND_DONE ;
 scalar_t__ GATT_MIN_BR_MTU_SIZE ;
 int L2CAP_CFG_OK ;
 scalar_t__ L2CAP_DEFAULT_MTU ;
 int L2CA_ConfigRsp (int ,TYPE_1__*) ;
 scalar_t__ btm_sec_is_a_bonded_dev (int ) ;
 int gatt_add_a_bonded_dev_for_srv_chg (int ) ;
 int gatt_chk_srv_chg (int *) ;
 TYPE_2__* gatt_find_tcb_by_cid (int ) ;
 int * gatt_is_bda_in_the_srv_chg_clt_list (int ) ;
 int gatt_send_conn_cback (TYPE_2__*) ;
 int gatt_set_ch_state (TYPE_2__*,int ) ;
 int memset (TYPE_1__*,int ,int) ;

void gatt_l2cif_config_ind_cback(UINT16 lcid, tL2CAP_CFG_INFO *p_cfg)
{
    tGATT_TCB *p_tcb;
    tGATTS_SRV_CHG *p_srv_chg_clt = ((void*)0);

    if ((p_tcb = gatt_find_tcb_by_cid(lcid)) != ((void*)0)) {

        if ( p_cfg->mtu_present &&
                (p_cfg->mtu >= GATT_MIN_BR_MTU_SIZE && p_cfg->mtu < L2CAP_DEFAULT_MTU)) {
            p_tcb->payload_size = p_cfg->mtu;
        } else {
            p_tcb->payload_size = L2CAP_DEFAULT_MTU;
        }


        memset(p_cfg, 0, sizeof(tL2CAP_CFG_INFO));
        p_cfg->result = L2CAP_CFG_OK;
        L2CA_ConfigRsp(lcid, p_cfg);


        if ((p_tcb->ch_flags & GATT_L2C_CFG_IND_DONE) == 0) {

            p_tcb->ch_flags |= GATT_L2C_CFG_IND_DONE;


            if (p_tcb->ch_flags & GATT_L2C_CFG_CFM_DONE) {
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
    }
}
