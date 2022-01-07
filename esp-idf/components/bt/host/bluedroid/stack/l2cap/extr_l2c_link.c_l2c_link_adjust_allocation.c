
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int link_xmit_quota; int sent_not_acked; scalar_t__ link_state; int timer_entry; int link_xmit_data_q; int acl_priority; scalar_t__ in_use; } ;
typedef TYPE_1__ tL2C_LCB ;
typedef int UINT16 ;
struct TYPE_4__ {int num_lm_acl_bufs; scalar_t__ num_links_active; int controller_xmit_window; int round_robin_quota; int round_robin_unacked; TYPE_1__* lcb_pool; } ;


 int BTU_TTYPE_L2CAP_LINK ;
 int L2CAP_HIGH_PRI_MIN_XMIT_QUOTA_A ;
 int L2CAP_LINK_FLOW_CONTROL_TOUT ;
 int L2CAP_PRIORITY_HIGH ;
 int L2CAP_TRACE_EVENT (char*,int,int,...) ;
 scalar_t__ LST_CONNECTED ;
 int MAX_L2CAP_LINKS ;
 int btu_start_timer (int *,int ,int ) ;
 TYPE_2__ l2cb ;
 int list_is_empty (int ) ;

void l2c_link_adjust_allocation (void)
{
    UINT16 qq, yy, qq_remainder;
    tL2C_LCB *p_lcb;
    UINT16 hi_quota, low_quota;
    UINT16 num_lowpri_links = 0;
    UINT16 num_hipri_links = 0;
    UINT16 controller_xmit_quota = l2cb.num_lm_acl_bufs;
    UINT16 high_pri_link_quota = L2CAP_HIGH_PRI_MIN_XMIT_QUOTA_A;


    if (l2cb.num_links_active == 0) {
        l2cb.controller_xmit_window = l2cb.num_lm_acl_bufs;
        l2cb.round_robin_quota = l2cb.round_robin_unacked = 0;
        return;
    }


    for (yy = 0, p_lcb = &l2cb.lcb_pool[0]; yy < MAX_L2CAP_LINKS; yy++, p_lcb++) {
        if (p_lcb->in_use) {
            if (p_lcb->acl_priority == L2CAP_PRIORITY_HIGH) {
                num_hipri_links++;
            } else {
                num_lowpri_links++;
            }
        }
    }


    low_quota = num_lowpri_links ? 1 : 0;
    while ( (num_hipri_links * high_pri_link_quota + low_quota) > controller_xmit_quota ) {
        high_pri_link_quota--;
    }


    hi_quota = num_hipri_links * high_pri_link_quota;
    low_quota = (hi_quota < controller_xmit_quota) ? controller_xmit_quota - hi_quota : 1;




    if (num_lowpri_links > low_quota) {
        l2cb.round_robin_quota = low_quota;
        qq = qq_remainder = 1;
    }

    else if (num_lowpri_links > 0) {
        l2cb.round_robin_quota = 0;
        l2cb.round_robin_unacked = 0;
        qq = low_quota / num_lowpri_links;
        qq_remainder = low_quota % num_lowpri_links;
    }

    else {
        l2cb.round_robin_quota = 0;
        l2cb.round_robin_unacked = 0;
        qq = qq_remainder = 1;
    }

    L2CAP_TRACE_EVENT ("l2c_link_adjust_allocation  num_hipri: %u  num_lowpri: %u  low_quota: %u  round_robin_quota: %u  qq: %u\n",
                       num_hipri_links, num_lowpri_links, low_quota,
                       l2cb.round_robin_quota, qq);


    for (yy = 0, p_lcb = &l2cb.lcb_pool[0]; yy < MAX_L2CAP_LINKS; yy++, p_lcb++) {
        if (p_lcb->in_use) {
            if (p_lcb->acl_priority == L2CAP_PRIORITY_HIGH) {
                p_lcb->link_xmit_quota = high_pri_link_quota;
            } else {



                if (( p_lcb->link_xmit_quota > 0 ) && ( qq == 0 )) {
                    l2cb.round_robin_unacked += p_lcb->sent_not_acked;
                }

                p_lcb->link_xmit_quota = qq;
                if (qq_remainder > 0) {
                    p_lcb->link_xmit_quota++;
                    qq_remainder--;
                }
            }

            L2CAP_TRACE_EVENT ("l2c_link_adjust_allocation LCB %d   Priority: %d  XmitQuota: %d\n",
                               yy, p_lcb->acl_priority, p_lcb->link_xmit_quota);

            L2CAP_TRACE_EVENT ("        SentNotAcked: %d  RRUnacked: %d\n",
                               p_lcb->sent_not_acked, l2cb.round_robin_unacked);




            if ( (p_lcb->link_state == LST_CONNECTED)
                    && (!list_is_empty(p_lcb->link_xmit_data_q))
                    && (p_lcb->sent_not_acked < p_lcb->link_xmit_quota) ) {
                btu_start_timer (&p_lcb->timer_entry, BTU_TTYPE_L2CAP_LINK, L2CAP_LINK_FLOW_CONTROL_TOUT);
            }
        }
    }

}
