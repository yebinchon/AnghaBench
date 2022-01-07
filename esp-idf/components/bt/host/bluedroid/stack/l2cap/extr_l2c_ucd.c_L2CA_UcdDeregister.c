
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ state; } ;
struct TYPE_9__ {TYPE_1__ ucd; scalar_t__ in_use; } ;
typedef TYPE_2__ tL2C_RCB ;
struct TYPE_10__ {scalar_t__ local_cid; scalar_t__ in_use; } ;
typedef TYPE_3__ tL2C_CCB ;
typedef scalar_t__ UINT16 ;
struct TYPE_11__ {TYPE_3__* ccb_pool; TYPE_2__* rcb_pool; } ;
typedef int BOOLEAN ;


 int FALSE ;
 scalar_t__ L2CAP_CONNECTIONLESS_CID ;
 int L2CAP_TRACE_API (char*,scalar_t__) ;
 int L2CAP_TRACE_ERROR (char*,scalar_t__) ;
 scalar_t__ L2C_UCD_RCB_ID ;
 scalar_t__ L2C_UCD_STATE_UNUSED ;
 scalar_t__ MAX_L2CAP_CHANNELS ;
 scalar_t__ MAX_L2CAP_CLIENTS ;
 int TRUE ;
 TYPE_7__ l2cb ;
 TYPE_2__* l2cu_find_rcb_by_psm (scalar_t__) ;
 int l2cu_release_ccb (TYPE_3__*) ;
 int l2cu_release_rcb (TYPE_2__*) ;

BOOLEAN L2CA_UcdDeregister ( UINT16 psm )
{
    tL2C_CCB *p_ccb;
    tL2C_RCB *p_rcb;
    UINT16 xx;

    L2CAP_TRACE_API ("L2CA_UcdDeregister()  PSM: 0x%04x", psm);

    if ((p_rcb = l2cu_find_rcb_by_psm (psm)) == ((void*)0)) {
        L2CAP_TRACE_ERROR ("L2CAP - no RCB for L2CA_UcdDeregister, PSM: 0x%04x", psm);
        return (FALSE);
    }

    p_rcb->ucd.state = L2C_UCD_STATE_UNUSED;


    p_rcb = &l2cb.rcb_pool[0];

    for (xx = 0; xx < MAX_L2CAP_CLIENTS; xx++, p_rcb++) {
        if ((p_rcb->in_use) && (p_rcb->ucd.state != L2C_UCD_STATE_UNUSED)) {
            return (TRUE);
        }
    }


    if ((p_rcb = l2cu_find_rcb_by_psm (L2C_UCD_RCB_ID)) != ((void*)0)) {
        l2cu_release_rcb (p_rcb);
    }


    p_ccb = l2cb.ccb_pool;
    for ( xx = 0; xx < MAX_L2CAP_CHANNELS; xx++ ) {
        if (( p_ccb->in_use )
                && ( p_ccb->local_cid == L2CAP_CONNECTIONLESS_CID )) {
            l2cu_release_ccb (p_ccb);
        }
        p_ccb++;
    }

    return (TRUE);
}
