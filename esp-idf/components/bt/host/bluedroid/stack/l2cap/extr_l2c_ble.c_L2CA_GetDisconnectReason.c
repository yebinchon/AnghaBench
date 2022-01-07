
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int disc_reason; } ;
typedef TYPE_1__ tL2C_LCB ;
typedef int tBT_TRANSPORT ;
typedef int UINT16 ;
typedef int BD_ADDR ;


 int L2CAP_TRACE_DEBUG (char*,int ) ;
 TYPE_1__* l2cu_find_lcb_by_bd_addr (int ,int ) ;

UINT16 L2CA_GetDisconnectReason (BD_ADDR remote_bda, tBT_TRANSPORT transport)
{
    tL2C_LCB *p_lcb;
    UINT16 reason = 0;

    if ((p_lcb = l2cu_find_lcb_by_bd_addr (remote_bda, transport)) != ((void*)0)) {
        reason = p_lcb->disc_reason;
    }

    L2CAP_TRACE_DEBUG ("L2CA_GetDisconnectReason=%d ", reason);

    return reason;
}
