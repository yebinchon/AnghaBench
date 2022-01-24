#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {void* param; } ;
struct TYPE_7__ {int link_flush_tout; int id; scalar_t__ completed_packets; int /*<<< orphan*/  link_xmit_data_q; int /*<<< orphan*/  le_sec_pending_q; int /*<<< orphan*/  tx_data_len; scalar_t__ transport; int /*<<< orphan*/  is_bonding; int /*<<< orphan*/  idle_timeout; TYPE_6__ upda_con_timer; TYPE_6__ info_timer_entry; TYPE_6__ timer_entry; int /*<<< orphan*/  handle; int /*<<< orphan*/  link_state; scalar_t__ in_use; int /*<<< orphan*/  remote_bd_addr; } ;
typedef  TYPE_1__ tL2C_LCB ;
typedef  scalar_t__ tBT_TRANSPORT ;
struct TYPE_9__ {int /*<<< orphan*/  (* get_ble_default_data_packet_length ) () ;} ;
struct TYPE_8__ {int /*<<< orphan*/  num_links_active; int /*<<< orphan*/  num_ble_links_active; int /*<<< orphan*/  idle_timeout; TYPE_1__* lcb_pool; } ;
typedef  void* TIMER_PARAM_TYPE ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BD_ADDR_LEN ; 
 scalar_t__ BT_TRANSPORT_LE ; 
 int /*<<< orphan*/  HCI_INVALID_HANDLE ; 
 int /*<<< orphan*/  LST_DISCONNECTED ; 
 int MAX_L2CAP_LINKS ; 
 int /*<<< orphan*/  QUEUE_SIZE_MAX ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 TYPE_5__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_4__ l2cb ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 

tL2C_LCB *FUNC9 (BD_ADDR p_bd_addr, BOOLEAN is_bonding, tBT_TRANSPORT transport)
{
    int         xx;
    tL2C_LCB    *p_lcb = &l2cb.lcb_pool[0];

    for (xx = 0; xx < MAX_L2CAP_LINKS; xx++, p_lcb++) {
        if (!p_lcb->in_use) {
            FUNC0(&p_lcb->timer_entry);
            FUNC0(&p_lcb->info_timer_entry);
            FUNC0(&p_lcb->upda_con_timer);

            FUNC7 (p_lcb, 0, sizeof (tL2C_LCB));
            FUNC6 (p_lcb->remote_bd_addr, p_bd_addr, BD_ADDR_LEN);

            p_lcb->in_use          = TRUE;
            p_lcb->link_state      = LST_DISCONNECTED;
            p_lcb->handle          = HCI_INVALID_HANDLE;
            p_lcb->link_flush_tout = 0xFFFF;
            p_lcb->timer_entry.param = (TIMER_PARAM_TYPE)p_lcb;
            p_lcb->info_timer_entry.param = (TIMER_PARAM_TYPE)p_lcb;
            p_lcb->upda_con_timer.param = (TIMER_PARAM_TYPE)p_lcb;
            p_lcb->idle_timeout    = l2cb.idle_timeout;
            p_lcb->id              = 1;                     /* spec does not allow '0' */
            p_lcb->is_bonding      = is_bonding;
#if (BLE_INCLUDED == TRUE)
            p_lcb->transport       = transport;
            p_lcb->tx_data_len     = FUNC1()->get_ble_default_data_packet_length();
            p_lcb->le_sec_pending_q = FUNC2(QUEUE_SIZE_MAX);

            if (transport == BT_TRANSPORT_LE) {
                l2cb.num_ble_links_active++;
                FUNC3();
            } else
#endif
            {
                l2cb.num_links_active++;
                FUNC4();
            }
            p_lcb->link_xmit_data_q = FUNC5(NULL);
#if (C2H_FLOW_CONTROL_INCLUDED == TRUE)
            p_lcb->completed_packets = 0;
#endif ///C2H_FLOW_CONTROL_INCLUDED == TRUE
            return (p_lcb);
        }
    }

    /* If here, no free LCB found */
    return (NULL);
}