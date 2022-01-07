
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_flushable; } ;
typedef TYPE_1__ tL2C_CCB ;
typedef int UINT16 ;
typedef int BOOLEAN ;


 int FALSE ;
 int L2CAP_TRACE_API (char*,int ,int ) ;
 int L2CAP_TRACE_WARNING (char*,int ) ;
 int TRUE ;
 TYPE_1__* l2cu_find_ccb_by_cid (int *,int ) ;

BOOLEAN L2CA_SetChnlFlushability (UINT16 cid, BOOLEAN is_flushable)
{


    tL2C_CCB *p_ccb;


    if ((p_ccb = l2cu_find_ccb_by_cid (((void*)0), cid)) == ((void*)0)) {
        L2CAP_TRACE_WARNING ("L2CAP - no CCB for L2CA_SetChnlFlushability, CID: %d", cid);
        return (FALSE);
    }

    p_ccb->is_flushable = is_flushable;

    L2CAP_TRACE_API ("L2CA_SetChnlFlushability()  CID: 0x%04x  is_flushable: %d", cid, is_flushable);



    return (TRUE);
}
