
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int state; } ;
struct TYPE_8__ {TYPE_1__ ucd; } ;
typedef TYPE_2__ tL2C_RCB ;
struct TYPE_9__ {scalar_t__ link_state; } ;
typedef TYPE_3__ tL2C_LCB ;
typedef int tL2C_CCB ;
typedef int UINT8 ;
typedef int UINT16 ;
typedef scalar_t__ BOOLEAN ;
typedef int* BD_ADDR ;


 int BT_TRANSPORT_BR_EDR ;
 scalar_t__ FALSE ;
 int L2CAP_CONNECTIONLESS_CID ;
 int L2CAP_TRACE_API (char*,int ,int,int,int) ;
 int L2CAP_TRACE_WARNING (char*,int ) ;
 int L2CAP_UCD_INFO_TYPE_MTU ;
 int L2CAP_UCD_INFO_TYPE_RECEPTION ;
 int L2C_UCD_STATE_UNUSED ;
 int L2C_UCD_STATE_W4_MTU ;
 int L2C_UCD_STATE_W4_RECEPTION ;
 scalar_t__ LST_CONNECTED ;
 scalar_t__ TRUE ;
 int l2c_ucd_check_pending_info_req (int *) ;
 scalar_t__ l2c_ucd_connect (int*) ;
 int * l2cu_find_ccb_by_cid (TYPE_3__*,int ) ;
 TYPE_3__* l2cu_find_lcb_by_bd_addr (int*,int ) ;
 TYPE_2__* l2cu_find_rcb_by_psm (int ) ;

BOOLEAN L2CA_UcdDiscover ( UINT16 psm, BD_ADDR rem_bda, UINT8 info_type )
{
    tL2C_LCB *p_lcb;
    tL2C_CCB *p_ccb;
    tL2C_RCB *p_rcb;

    L2CAP_TRACE_API ("L2CA_UcdDiscover()  PSM: 0x%04x  BDA: %08x%04x, InfoType=0x%02x", psm,
                     (rem_bda[0] << 24) + (rem_bda[1] << 16) + (rem_bda[2] << 8) + rem_bda[3],
                     (rem_bda[4] << 8) + rem_bda[5], info_type);


    if (((p_rcb = l2cu_find_rcb_by_psm (psm)) == ((void*)0))
            || ( p_rcb->ucd.state == L2C_UCD_STATE_UNUSED )) {
        L2CAP_TRACE_WARNING ("L2CAP - no RCB for L2CA_UcdDiscover, PSM: 0x%04x", psm);
        return (FALSE);
    }



    if (((p_lcb = l2cu_find_lcb_by_bd_addr (rem_bda, BT_TRANSPORT_BR_EDR)) == ((void*)0))
            || ((p_ccb = l2cu_find_ccb_by_cid (p_lcb, L2CAP_CONNECTIONLESS_CID)) == ((void*)0))) {
        if ( l2c_ucd_connect (rem_bda) == FALSE ) {
            return (FALSE);
        }
    }



    if ( info_type & L2CAP_UCD_INFO_TYPE_RECEPTION ) {
        p_rcb->ucd.state |= L2C_UCD_STATE_W4_RECEPTION;
    }

    if ( info_type & L2CAP_UCD_INFO_TYPE_MTU ) {
        p_rcb->ucd.state |= L2C_UCD_STATE_W4_MTU;
    }


    if ((p_lcb) && (p_lcb->link_state == LST_CONNECTED)) {
        if (!p_ccb) {
            p_ccb = l2cu_find_ccb_by_cid (p_lcb, L2CAP_CONNECTIONLESS_CID);
        }
        l2c_ucd_check_pending_info_req(p_ccb);
    }
    return (TRUE);
}
