
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int io_cap; int oob_data; int auth_req; int bd_addr; } ;
typedef TYPE_2__ tBTM_SP_IO_RSP ;
typedef int tBTM_SP_EVT_DATA ;
struct TYPE_8__ {int rmt_io_caps; int rmt_auth_req; int dev_class; int trusted_mask; } ;
typedef TYPE_3__ tBTM_SEC_DEV_REC ;
typedef int UINT8 ;
struct TYPE_6__ {int (* p_sp_callback ) (int ,int *) ;} ;
struct TYPE_9__ {scalar_t__ pairing_state; TYPE_1__ api; int pairing_flags; int connecting_dc; int connecting_bda; int pairing_bda; } ;


 int BD_ADDR_LEN ;
 int BTM_AUTH_DD_BOND ;
 int BTM_PAIR_FLAGS_PEER_STARTED_DD ;
 scalar_t__ BTM_PAIR_STATE_IDLE ;
 scalar_t__ BTM_PAIR_STATE_INCOMING_SSP ;
 int BTM_SEC_CLR_TRUSTED_DEVICE (int ) ;
 int BTM_SP_IO_RSP_EVT ;
 int DEV_CLASS_LEN ;
 int STREAM_TO_BDADDR (int ,int *) ;
 int STREAM_TO_UINT8 (int,int *) ;
 TYPE_5__ btm_cb ;
 TYPE_3__* btm_find_or_alloc_dev (int ) ;
 int btm_inq_stop_on_ssp () ;
 int btm_sec_change_pairing_state (scalar_t__) ;
 int l2c_pin_code_request (int ) ;
 int memcmp (int ,int ,int ) ;
 int memcpy (int ,int ,int ) ;
 int stub1 (int ,int *) ;

void btm_io_capabilities_rsp (UINT8 *p)
{
    tBTM_SEC_DEV_REC *p_dev_rec;
    tBTM_SP_IO_RSP evt_data;

    STREAM_TO_BDADDR (evt_data.bd_addr, p);
    STREAM_TO_UINT8 (evt_data.io_cap, p);
    STREAM_TO_UINT8 (evt_data.oob_data, p);
    STREAM_TO_UINT8 (evt_data.auth_req, p);


    p_dev_rec = btm_find_or_alloc_dev (evt_data.bd_addr);


    if (btm_cb.pairing_state == BTM_PAIR_STATE_IDLE) {
        memcpy (btm_cb.pairing_bda, evt_data.bd_addr, BD_ADDR_LEN);

        btm_sec_change_pairing_state (BTM_PAIR_STATE_INCOMING_SSP);


        BTM_SEC_CLR_TRUSTED_DEVICE(p_dev_rec->trusted_mask);


        btm_inq_stop_on_ssp();
    }


    l2c_pin_code_request (evt_data.bd_addr);







    if (!memcmp (evt_data.bd_addr, btm_cb.connecting_bda, BD_ADDR_LEN)) {
        memcpy (p_dev_rec->dev_class, btm_cb.connecting_dc, DEV_CLASS_LEN);
    }


    if (btm_cb.pairing_state == BTM_PAIR_STATE_INCOMING_SSP
            && (evt_data.auth_req & BTM_AUTH_DD_BOND) ) {
        btm_cb.pairing_flags |= BTM_PAIR_FLAGS_PEER_STARTED_DD;
    }


    p_dev_rec->rmt_io_caps = evt_data.io_cap;
    p_dev_rec->rmt_auth_req = evt_data.auth_req;

    if (btm_cb.api.p_sp_callback) {
        (*btm_cb.api.p_sp_callback) (BTM_SP_IO_RSP_EVT, (tBTM_SP_EVT_DATA *)&evt_data);
    }
}
