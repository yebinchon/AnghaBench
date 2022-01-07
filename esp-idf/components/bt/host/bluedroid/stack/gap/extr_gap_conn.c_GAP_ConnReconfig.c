
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tL2CAP_CFG_INFO ;
struct TYPE_3__ {scalar_t__ con_state; int connection_id; int cfg; } ;
typedef TYPE_1__ tGAP_CCB ;
typedef int UINT16 ;


 int BT_PASS ;
 scalar_t__ GAP_CCB_STATE_CONNECTED ;
 int GAP_ERR_BAD_HANDLE ;
 int L2CA_CONFIG_REQ (int ,int *) ;
 TYPE_1__* gap_find_ccb_by_handle (int ) ;

UINT16 GAP_ConnReconfig (UINT16 gap_handle, tL2CAP_CFG_INFO *p_cfg)
{
    tGAP_CCB *p_ccb = gap_find_ccb_by_handle (gap_handle);

    if (!p_ccb) {
        return (GAP_ERR_BAD_HANDLE);
    }

    p_ccb->cfg = *p_cfg;

    if (p_ccb->con_state == GAP_CCB_STATE_CONNECTED) {
        L2CA_CONFIG_REQ (p_ccb->connection_id, p_cfg);
    }

    return (BT_PASS);
}
