
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int tL2C_LCB ;
struct TYPE_11__ {int delay_variation; int latency; int peak_bandwidth; int token_bucket_size; int token_rate; int service_type; } ;
struct TYPE_14__ {scalar_t__ in_use; void* param; int user_tx_buf_size; int user_rx_buf_size; void* fcr_tx_buf_size; int fcr_rx_buf_size; int allowed_modes; int preferred_mode; TYPE_1__ qos; int mtu; int flush_to; } ;
struct TYPE_12__ {void* waiting_for_ack_q; void* retrans_q; void* srej_rcv_hold_q; TYPE_4__ mon_retrans_timer; TYPE_4__ ack_timer; } ;
struct TYPE_13__ {int should_free_rcb; int buff_quota; TYPE_4__ timer_entry; void* is_flushable; void* rx_data_rate; void* tx_data_rate; scalar_t__ flags; int chnl_state; scalar_t__ config_done; void* cong_sent; TYPE_2__ fcrb; void* xmit_hold_q; void* tx_mps; int max_rx_mtu; TYPE_4__ ertm_info; int fcr_cfg_tries; void* peer_cfg_already_rejected; scalar_t__ bypass_fcs; TYPE_4__ peer_cfg; TYPE_4__ our_cfg; scalar_t__ peer_cfg_bits; int ccb_priority; int * p_rcb; int * p_lcb; scalar_t__ local_cid; int in_use; int * p_prev_ccb; struct TYPE_13__* p_next_ccb; } ;
typedef TYPE_3__ tL2C_CCB ;
typedef int tL2CAP_ERTM_INFO ;
typedef int tL2CAP_CFG_INFO ;
typedef scalar_t__ UINT16 ;
struct TYPE_15__ {TYPE_3__* ccb_pool; TYPE_3__* p_free_ccb_last; TYPE_3__* p_free_ccb_first; } ;
typedef void* TIMER_PARAM_TYPE ;
typedef int TIMER_LIST_ENT ;


 int CST_CLOSED ;
 void* FALSE ;
 scalar_t__ L2CAP_BASE_APPL_CID ;
 void* L2CAP_CHNL_DATA_RATE_LOW ;
 int L2CAP_CHNL_PRIORITY_LOW ;
 int L2CAP_DEFAULT_BUCKET_SIZE ;
 int L2CAP_DEFAULT_DELAY ;
 int L2CAP_DEFAULT_FLUSH_TO ;
 int L2CAP_DEFAULT_LATENCY ;
 int L2CAP_DEFAULT_MTU ;
 int L2CAP_DEFAULT_PEAK_BANDWIDTH ;
 int L2CAP_DEFAULT_SERV_TYPE ;
 int L2CAP_DEFAULT_TOKEN_RATE ;
 int L2CAP_FCR_BASIC_MODE ;
 int L2CAP_FCR_CHAN_OPT_BASIC ;
 int L2CAP_FCR_RX_BUF_SIZE ;
 void* L2CAP_FCR_TX_BUF_SIZE ;
 int L2CAP_MAX_FCR_CFG_TRIES ;
 int L2CAP_MTU_SIZE ;
 int L2CAP_TRACE_DEBUG (char*,scalar_t__,...) ;
 int L2CAP_TRACE_ERROR (char*,scalar_t__) ;
 int L2CAP_USER_RX_BUF_SIZE ;
 int L2CAP_USER_TX_BUF_SIZE ;
 int QUEUE_SIZE_MAX ;
 int TRUE ;
 int btu_free_quick_timer (TYPE_4__*) ;
 int btu_free_timer (TYPE_4__*) ;
 void* fixed_queue_new (int ) ;
 int l2c_fcr_free_timer (TYPE_3__*) ;
 int l2c_link_adjust_chnl_allocation () ;
 TYPE_7__ l2cb ;
 int l2cu_enqueue_ccb (TYPE_3__*) ;
 int memset (TYPE_4__*,int ,int) ;

tL2C_CCB *l2cu_allocate_ccb (tL2C_LCB *p_lcb, UINT16 cid)
{
    tL2C_CCB *p_ccb;
    tL2C_CCB *p_prev;

    L2CAP_TRACE_DEBUG ("l2cu_allocate_ccb: cid 0x%04x", cid);

    if (!l2cb.p_free_ccb_first) {
        return (((void*)0));
    }


    if (cid == 0) {
        p_ccb = l2cb.p_free_ccb_first;
        l2cb.p_free_ccb_first = p_ccb->p_next_ccb;
    } else {
        p_prev = ((void*)0);

        p_ccb = &l2cb.ccb_pool[cid - L2CAP_BASE_APPL_CID];

        if (p_ccb == l2cb.p_free_ccb_first) {
            l2cb.p_free_ccb_first = p_ccb->p_next_ccb;
        } else {
            for (p_prev = l2cb.p_free_ccb_first; p_prev != ((void*)0); p_prev = p_prev->p_next_ccb) {
                if (p_prev->p_next_ccb == p_ccb) {
                    p_prev->p_next_ccb = p_ccb->p_next_ccb;

                    if (p_ccb == l2cb.p_free_ccb_last) {
                        l2cb.p_free_ccb_last = p_prev;
                    }

                    break;
                }
            }
            if (p_prev == ((void*)0)) {
                L2CAP_TRACE_ERROR ("l2cu_allocate_ccb: could not find CCB for CID 0x%04x in the free list", cid);
                return ((void*)0);
            }
        }
    }

    p_ccb->p_next_ccb = p_ccb->p_prev_ccb = ((void*)0);

    p_ccb->in_use = TRUE;


    p_ccb->local_cid = L2CAP_BASE_APPL_CID + (UINT16)(p_ccb - l2cb.ccb_pool);

    p_ccb->p_lcb = p_lcb;
    p_ccb->p_rcb = ((void*)0);
    p_ccb->should_free_rcb = 0;


    p_ccb->ccb_priority = L2CAP_CHNL_PRIORITY_LOW;

    if (p_lcb) {
        l2cu_enqueue_ccb (p_ccb);
    }


    p_ccb->peer_cfg_bits = 0;


    memset (&p_ccb->our_cfg, 0, sizeof(tL2CAP_CFG_INFO));
    memset (&p_ccb->peer_cfg, 0, sizeof(tL2CAP_CFG_INFO));


    p_ccb->our_cfg.flush_to = p_ccb->peer_cfg.flush_to = L2CAP_DEFAULT_FLUSH_TO;
    p_ccb->our_cfg.mtu = p_ccb->peer_cfg.mtu = L2CAP_DEFAULT_MTU;
    p_ccb->our_cfg.qos.service_type = p_ccb->peer_cfg.qos.service_type = L2CAP_DEFAULT_SERV_TYPE;
    p_ccb->our_cfg.qos.token_rate = p_ccb->peer_cfg.qos.token_rate = L2CAP_DEFAULT_TOKEN_RATE;
    p_ccb->our_cfg.qos.token_bucket_size = p_ccb->peer_cfg.qos.token_bucket_size = L2CAP_DEFAULT_BUCKET_SIZE;
    p_ccb->our_cfg.qos.peak_bandwidth = p_ccb->peer_cfg.qos.peak_bandwidth = L2CAP_DEFAULT_PEAK_BANDWIDTH;
    p_ccb->our_cfg.qos.latency = p_ccb->peer_cfg.qos.latency = L2CAP_DEFAULT_LATENCY;
    p_ccb->our_cfg.qos.delay_variation = p_ccb->peer_cfg.qos.delay_variation = L2CAP_DEFAULT_DELAY;

    p_ccb->bypass_fcs = 0;
    memset (&p_ccb->ertm_info, 0, sizeof(tL2CAP_ERTM_INFO));
    p_ccb->peer_cfg_already_rejected = FALSE;
    p_ccb->fcr_cfg_tries = L2CAP_MAX_FCR_CFG_TRIES;


    btu_free_quick_timer(&p_ccb->fcrb.ack_timer);
    memset(&p_ccb->fcrb.ack_timer, 0, sizeof(TIMER_LIST_ENT));
    p_ccb->fcrb.ack_timer.param = (TIMER_PARAM_TYPE)p_ccb;

    btu_free_quick_timer(&p_ccb->fcrb.mon_retrans_timer);
    memset(&p_ccb->fcrb.mon_retrans_timer, 0, sizeof(TIMER_LIST_ENT));
    p_ccb->fcrb.mon_retrans_timer.param = (TIMER_PARAM_TYPE)p_ccb;
    l2c_fcr_free_timer (p_ccb);

    p_ccb->ertm_info.preferred_mode = L2CAP_FCR_BASIC_MODE;
    p_ccb->ertm_info.allowed_modes = L2CAP_FCR_CHAN_OPT_BASIC;
    p_ccb->ertm_info.fcr_rx_buf_size = L2CAP_FCR_RX_BUF_SIZE;
    p_ccb->ertm_info.fcr_tx_buf_size = L2CAP_FCR_TX_BUF_SIZE;
    p_ccb->ertm_info.user_rx_buf_size = L2CAP_USER_RX_BUF_SIZE;
    p_ccb->ertm_info.user_tx_buf_size = L2CAP_USER_TX_BUF_SIZE;
    p_ccb->max_rx_mtu = L2CAP_MTU_SIZE;
    p_ccb->tx_mps = L2CAP_FCR_TX_BUF_SIZE - 32;

    p_ccb->xmit_hold_q = fixed_queue_new(QUEUE_SIZE_MAX);

    p_ccb->fcrb.srej_rcv_hold_q = fixed_queue_new(QUEUE_SIZE_MAX);
    p_ccb->fcrb.retrans_q = fixed_queue_new(QUEUE_SIZE_MAX);
    p_ccb->fcrb.waiting_for_ack_q = fixed_queue_new(QUEUE_SIZE_MAX);


    p_ccb->cong_sent = FALSE;
    p_ccb->buff_quota = 2;


    if (cid == 0) {
        p_ccb->config_done = 0;
    } else {
        L2CAP_TRACE_DEBUG ("l2cu_allocate_ccb: cid 0x%04x config_done:0x%x", cid, p_ccb->config_done);
    }

    p_ccb->chnl_state = CST_CLOSED;
    p_ccb->flags = 0;
    p_ccb->tx_data_rate = L2CAP_CHNL_DATA_RATE_LOW;
    p_ccb->rx_data_rate = L2CAP_CHNL_DATA_RATE_LOW;


    p_ccb->is_flushable = FALSE;


    btu_free_timer(&p_ccb->timer_entry);
    memset(&p_ccb->timer_entry, 0, sizeof(TIMER_LIST_ENT));
    p_ccb->timer_entry.param = (TIMER_PARAM_TYPE)p_ccb;
    p_ccb->timer_entry.in_use = 0;

    l2c_link_adjust_chnl_allocation ();

    return (p_ccb);
}
