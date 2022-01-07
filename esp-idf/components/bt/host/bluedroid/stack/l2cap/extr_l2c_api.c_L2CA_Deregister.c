
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tL2C_RCB ;
struct TYPE_6__ {TYPE_3__* p_first_ccb; } ;
struct TYPE_7__ {scalar_t__ link_state; TYPE_1__ ccb_queue; scalar_t__ in_use; } ;
typedef TYPE_2__ tL2C_LCB ;
struct TYPE_8__ {scalar_t__ chnl_state; int * p_rcb; scalar_t__ in_use; } ;
typedef TYPE_3__ tL2C_CCB ;
typedef int UINT16 ;
struct TYPE_9__ {TYPE_2__* lcb_pool; } ;


 scalar_t__ CST_W4_L2CAP_DISCONNECT_RSP ;
 scalar_t__ CST_W4_L2CA_DISCONNECT_RSP ;
 int L2CAP_TRACE_WARNING (char*,int ) ;
 int L2CEVT_L2CA_DISCONNECT_REQ ;
 scalar_t__ LST_DISCONNECTING ;
 int MAX_L2CAP_LINKS ;
 int l2c_csm_execute (TYPE_3__*,int ,int *) ;
 TYPE_4__ l2cb ;
 int * l2cu_find_rcb_by_psm (int ) ;
 int l2cu_release_rcb (int *) ;

void L2CA_Deregister (UINT16 psm)
{
    tL2C_RCB *p_rcb;
    tL2C_CCB *p_ccb;
    tL2C_LCB *p_lcb;
    int ii;


    if ((p_rcb = l2cu_find_rcb_by_psm (psm)) != ((void*)0)) {
        p_lcb = &l2cb.lcb_pool[0];
        for (ii = 0; ii < MAX_L2CAP_LINKS; ii++, p_lcb++) {
            if (p_lcb->in_use) {
                if (((p_ccb = p_lcb->ccb_queue.p_first_ccb) == ((void*)0))
                        || (p_lcb->link_state == LST_DISCONNECTING)) {
                    continue;
                }

                if ((p_ccb->in_use) &&
                        ((p_ccb->chnl_state == CST_W4_L2CAP_DISCONNECT_RSP) ||
                         (p_ccb->chnl_state == CST_W4_L2CA_DISCONNECT_RSP))) {
                    continue;
                }

                if (p_ccb->p_rcb == p_rcb) {
                    l2c_csm_execute (p_ccb, L2CEVT_L2CA_DISCONNECT_REQ, ((void*)0));
                }
            }
        }
        l2cu_release_rcb (p_rcb);
    } else {
        L2CAP_TRACE_WARNING ("L2CAP - PSM: 0x%04x not found for deregistration", psm);
    }
}
