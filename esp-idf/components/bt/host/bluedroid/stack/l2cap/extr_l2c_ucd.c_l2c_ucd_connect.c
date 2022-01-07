
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int tL2C_RCB ;
struct TYPE_11__ {int info_rx_bits; int peer_ext_fea; scalar_t__ link_state; } ;
typedef TYPE_1__ tL2C_LCB ;
struct TYPE_12__ {int chnl_state; int * p_rcb; int fixed_chnl_idle_tout; void* remote_cid; void* local_cid; } ;
typedef TYPE_2__ tL2C_CCB ;
typedef scalar_t__ BOOLEAN ;
typedef int* BD_ADDR ;


 int BTM_IsDeviceUp () ;
 int BT_TRANSPORT_BR_EDR ;
 int CST_OPEN ;
 scalar_t__ FALSE ;
 void* L2CAP_CONNECTIONLESS_CID ;
 int L2CAP_EXTENDED_FEATURES_INFO_TYPE ;
 int L2CAP_EXTFEA_UCD_RECEPTION ;
 int L2CAP_TRACE_DEBUG (char*,int,int) ;
 int L2CAP_TRACE_WARNING (char*) ;
 int L2CAP_UCD_CH_PRIORITY ;
 int L2CAP_UCD_IDLE_TIMEOUT ;
 int L2C_UCD_RCB_ID ;
 scalar_t__ LST_CONNECTED ;
 scalar_t__ TRUE ;
 TYPE_2__* l2cu_allocate_ccb (TYPE_1__*,int ) ;
 TYPE_1__* l2cu_allocate_lcb (int*,scalar_t__,int ) ;
 int l2cu_change_pri_ccb (TYPE_2__*,int ) ;
 scalar_t__ l2cu_create_conn (TYPE_1__*,int ) ;
 TYPE_2__* l2cu_find_ccb_by_cid (TYPE_1__*,void*) ;
 TYPE_1__* l2cu_find_lcb_by_bd_addr (int*,int ) ;
 int * l2cu_find_rcb_by_psm (int ) ;

__attribute__((used)) static BOOLEAN l2c_ucd_connect ( BD_ADDR rem_bda )
{
    tL2C_LCB *p_lcb;
    tL2C_CCB *p_ccb;
    tL2C_RCB *p_rcb;

    L2CAP_TRACE_DEBUG ("l2c_ucd_connect()  BDA: %08x%04x",
                       (rem_bda[0] << 24) + (rem_bda[1] << 16) + (rem_bda[2] << 8) + rem_bda[3],
                       (rem_bda[4] << 8) + rem_bda[5]);


    if (!BTM_IsDeviceUp()) {
        L2CAP_TRACE_WARNING ("l2c_ucd_connect - BTU not ready");
        return (FALSE);
    }


    if ((p_lcb = l2cu_find_lcb_by_bd_addr (rem_bda, BT_TRANSPORT_BR_EDR)) == ((void*)0)) {

        if ( ((p_lcb = l2cu_allocate_lcb (rem_bda, FALSE, BT_TRANSPORT_BR_EDR)) == ((void*)0))
                || (l2cu_create_conn(p_lcb, BT_TRANSPORT_BR_EDR) == FALSE) ) {
            L2CAP_TRACE_WARNING ("L2CAP - conn not started l2c_ucd_connect");
            return (FALSE);
        }
    } else if ( p_lcb->info_rx_bits & (1 << L2CAP_EXTENDED_FEATURES_INFO_TYPE) ) {
        if (!(p_lcb->peer_ext_fea & L2CAP_EXTFEA_UCD_RECEPTION)) {
            L2CAP_TRACE_WARNING ("L2CAP - UCD is not supported by peer, l2c_ucd_connect");
            return (FALSE);
        }
    }


    if ((p_ccb = l2cu_find_ccb_by_cid (p_lcb, L2CAP_CONNECTIONLESS_CID)) == ((void*)0)) {

        if ((p_ccb = l2cu_allocate_ccb (p_lcb, 0)) == ((void*)0)) {
            L2CAP_TRACE_WARNING ("L2CAP - no CCB for l2c_ucd_connect");
            return (FALSE);
        } else {

            p_ccb->local_cid = L2CAP_CONNECTIONLESS_CID;
            p_ccb->remote_cid = L2CAP_CONNECTIONLESS_CID;


            p_ccb->fixed_chnl_idle_tout = L2CAP_UCD_IDLE_TIMEOUT;


            l2cu_change_pri_ccb (p_ccb, L2CAP_UCD_CH_PRIORITY);

            if ((p_rcb = l2cu_find_rcb_by_psm (L2C_UCD_RCB_ID)) == ((void*)0)) {
                L2CAP_TRACE_WARNING ("L2CAP - no UCD registered, l2c_ucd_connect");
                return (FALSE);
            }

            p_ccb->p_rcb = p_rcb;


            if (p_lcb->link_state == LST_CONNECTED) {
                p_ccb->chnl_state = CST_OPEN;
            }
        }
    }

    return (TRUE);
}
