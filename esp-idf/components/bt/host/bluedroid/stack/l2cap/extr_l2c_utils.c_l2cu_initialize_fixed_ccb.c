
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


struct TYPE_21__ {scalar_t__ link_state; TYPE_8__** p_fixed_ccbs; int timer_entry; } ;
typedef TYPE_7__ tL2C_LCB ;
struct TYPE_19__ {int max_held_acks; } ;
struct TYPE_18__ {int user_tx_buf_size; int user_rx_buf_size; int fcr_tx_buf_size; int fcr_rx_buf_size; } ;
struct TYPE_23__ {int tx_win_sz; } ;
struct TYPE_17__ {TYPE_9__ fcr; } ;
struct TYPE_16__ {TYPE_9__ fcr; } ;
struct TYPE_15__ {scalar_t__ param; } ;
struct TYPE_22__ {size_t local_cid; size_t remote_cid; int fixed_chnl_idle_tout; int chnl_state; TYPE_7__* p_lcb; TYPE_5__ fcrb; TYPE_4__ ertm_info; TYPE_3__ peer_cfg; TYPE_2__ our_cfg; TYPE_1__ timer_entry; int is_flushable; } ;
typedef TYPE_8__ tL2C_CCB ;
typedef TYPE_9__ tL2CAP_FCR_OPTS ;
typedef size_t UINT16 ;
struct TYPE_20__ {int default_idle_tout; } ;
struct TYPE_14__ {TYPE_6__* fixed_reg; } ;
typedef scalar_t__ TIMER_PARAM_TYPE ;
typedef int BOOLEAN ;


 int CST_OPEN ;
 int FALSE ;
 int L2CAP_FCR_RX_BUF_SIZE ;
 int L2CAP_FCR_TX_BUF_SIZE ;
 size_t L2CAP_FIRST_FIXED_CHNL ;
 int L2CAP_USER_RX_BUF_SIZE ;
 int L2CAP_USER_TX_BUF_SIZE ;
 scalar_t__ LST_CONNECTED ;
 int TRUE ;
 int btu_stop_timer (int *) ;
 TYPE_13__ l2cb ;
 TYPE_8__* l2cu_allocate_ccb (int *,int ) ;

BOOLEAN l2cu_initialize_fixed_ccb (tL2C_LCB *p_lcb, UINT16 fixed_cid, tL2CAP_FCR_OPTS *p_fcr)
{
    return (TRUE);
}
