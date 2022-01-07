
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tL2C_LCB ;
struct TYPE_4__ {scalar_t__ local_cid; int * p_lcb; scalar_t__ in_use; } ;
typedef TYPE_1__ tL2C_CCB ;
typedef scalar_t__ UINT8 ;
typedef scalar_t__ UINT16 ;
struct TYPE_5__ {TYPE_1__* ccb_pool; } ;


 scalar_t__ L2CAP_BASE_APPL_CID ;
 scalar_t__ MAX_L2CAP_CHANNELS ;
 TYPE_3__ l2cb ;

tL2C_CCB *l2cu_find_ccb_by_cid (tL2C_LCB *p_lcb, UINT16 local_cid)
{
    tL2C_CCB *p_ccb = ((void*)0);

    UINT8 xx;


    if (local_cid >= L2CAP_BASE_APPL_CID) {

        local_cid -= L2CAP_BASE_APPL_CID;

        if (local_cid >= MAX_L2CAP_CHANNELS) {
            return ((void*)0);
        }

        p_ccb = l2cb.ccb_pool + local_cid;


        if (!p_ccb->in_use) {
            p_ccb = ((void*)0);
        }

        else if (p_lcb && p_lcb != p_ccb->p_lcb) {
            p_ccb = ((void*)0);
        }
    }

    else {

        p_ccb = l2cb.ccb_pool;
        for ( xx = 0; xx < MAX_L2CAP_CHANNELS; xx++ ) {
            if ((p_ccb->local_cid == local_cid)
                    && (p_ccb->in_use)
                    && (p_lcb == p_ccb->p_lcb)) {
                break;
            } else {
                p_ccb++;
            }
        }
        if ( xx >= MAX_L2CAP_CHANNELS ) {
            return ((void*)0);
        }
    }


    return (p_ccb);
}
