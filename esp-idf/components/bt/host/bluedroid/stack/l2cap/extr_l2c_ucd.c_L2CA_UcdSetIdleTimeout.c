
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tL2C_LCB ;
struct TYPE_3__ {int fixed_chnl_idle_tout; } ;
typedef TYPE_1__ tL2C_CCB ;
typedef int UINT16 ;
typedef int BOOLEAN ;
typedef int* BD_ADDR ;


 int BT_TRANSPORT_BR_EDR ;
 int FALSE ;
 int L2CAP_CONNECTIONLESS_CID ;
 int L2CAP_TRACE_API (char*,int ,int,int) ;
 int L2CAP_TRACE_WARNING (char*) ;
 int TRUE ;
 TYPE_1__* l2cu_find_ccb_by_cid (int *,int ) ;
 int * l2cu_find_lcb_by_bd_addr (int*,int ) ;

BOOLEAN L2CA_UcdSetIdleTimeout ( BD_ADDR rem_bda, UINT16 timeout )
{
    tL2C_LCB *p_lcb;
    tL2C_CCB *p_ccb;

    L2CAP_TRACE_API ("L2CA_UcdSetIdleTimeout()  Timeout: 0x%04x  BDA: %08x%04x", timeout,
                     (rem_bda[0] << 24) + (rem_bda[1] << 16) + (rem_bda[2] << 8) + rem_bda[3],
                     (rem_bda[4] << 8) + rem_bda[5]);



    if (((p_lcb = l2cu_find_lcb_by_bd_addr (rem_bda, BT_TRANSPORT_BR_EDR)) == ((void*)0))
            || ((p_ccb = l2cu_find_ccb_by_cid (p_lcb, L2CAP_CONNECTIONLESS_CID)) == ((void*)0))) {
        L2CAP_TRACE_WARNING ("L2CAP - no UCD channel");
        return (FALSE);
    } else {
        p_ccb->fixed_chnl_idle_tout = timeout;
        return (TRUE);
    }
}
