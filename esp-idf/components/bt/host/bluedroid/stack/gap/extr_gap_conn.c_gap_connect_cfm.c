
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int con_flags; scalar_t__ con_state; int gap_handle; int (* p_callback ) (int ,int ) ;int cfg; int psm; int rem_dev_address; } ;
typedef TYPE_1__ tGAP_CCB ;
typedef scalar_t__ UINT16 ;


 int GAP_CCB_FLAGS_SEC_DONE ;
 scalar_t__ GAP_CCB_STATE_CFG_SETUP ;
 scalar_t__ GAP_CCB_STATE_CONN_SETUP ;
 int GAP_EVT_CONN_CLOSED ;
 scalar_t__ L2CAP_CONN_OK ;
 int L2CA_CONFIG_REQ (scalar_t__,int *) ;
 int TRUE ;
 int btm_sec_mx_access_request (int ,int ,int ,int ,int ,int *,TYPE_1__*) ;
 TYPE_1__* gap_find_ccb_by_cid (scalar_t__) ;
 int gap_release_ccb (TYPE_1__*) ;
 int gap_sec_check_complete ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void gap_connect_cfm (UINT16 l2cap_cid, UINT16 result)
{
    tGAP_CCB *p_ccb;


    if ((p_ccb = gap_find_ccb_by_cid (l2cap_cid)) == ((void*)0)) {
        return;
    }


    if ( (p_ccb->con_flags & GAP_CCB_FLAGS_SEC_DONE) == 0) {
        btm_sec_mx_access_request (p_ccb->rem_dev_address, p_ccb->psm, TRUE,
                                   0, 0, &gap_sec_check_complete, p_ccb);
    }



    if ((result == L2CAP_CONN_OK) && (p_ccb->con_state == GAP_CCB_STATE_CONN_SETUP)) {
        p_ccb->con_state = GAP_CCB_STATE_CFG_SETUP;


        L2CA_CONFIG_REQ (l2cap_cid, &p_ccb->cfg);
    } else {

        if (p_ccb->p_callback) {
            (*p_ccb->p_callback) (p_ccb->gap_handle, GAP_EVT_CONN_CLOSED);
        }

        gap_release_ccb (p_ccb);
    }
}
