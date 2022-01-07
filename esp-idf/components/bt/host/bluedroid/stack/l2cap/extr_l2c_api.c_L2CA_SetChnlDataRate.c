
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* rx_data_rate; void* tx_data_rate; } ;
typedef TYPE_1__ tL2C_CCB ;
typedef void* tL2CAP_CHNL_DATA_RATE ;
typedef int UINT16 ;
typedef int BOOLEAN ;


 int FALSE ;
 int L2CAP_TRACE_API (char*,int ,void*,void*) ;
 int L2CAP_TRACE_WARNING (char*,int ) ;
 int TRUE ;
 int l2c_link_adjust_chnl_allocation () ;
 TYPE_1__* l2cu_find_ccb_by_cid (int *,int ) ;

BOOLEAN L2CA_SetChnlDataRate (UINT16 cid, tL2CAP_CHNL_DATA_RATE tx, tL2CAP_CHNL_DATA_RATE rx)
{
    tL2C_CCB *p_ccb;

    L2CAP_TRACE_API ("L2CA_SetChnlDataRate()  CID: 0x%04x, tx:%d, rx:%d", cid, tx, rx);


    if ((p_ccb = l2cu_find_ccb_by_cid (((void*)0), cid)) == ((void*)0)) {
        L2CAP_TRACE_WARNING ("L2CAP - no CCB for L2CA_SetChnlDataRate, CID: %d", cid);
        return (FALSE);
    }

    p_ccb->tx_data_rate = tx;
    p_ccb->rx_data_rate = rx;


    l2c_link_adjust_chnl_allocation ();

    return (TRUE);
}
