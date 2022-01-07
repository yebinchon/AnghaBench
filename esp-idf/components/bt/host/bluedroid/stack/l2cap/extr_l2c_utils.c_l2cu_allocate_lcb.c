
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {void* param; } ;
struct TYPE_7__ {int link_flush_tout; int id; scalar_t__ completed_packets; int link_xmit_data_q; int le_sec_pending_q; int tx_data_len; scalar_t__ transport; int is_bonding; int idle_timeout; TYPE_6__ upda_con_timer; TYPE_6__ info_timer_entry; TYPE_6__ timer_entry; int handle; int link_state; scalar_t__ in_use; int remote_bd_addr; } ;
typedef TYPE_1__ tL2C_LCB ;
typedef scalar_t__ tBT_TRANSPORT ;
struct TYPE_9__ {int (* get_ble_default_data_packet_length ) () ;} ;
struct TYPE_8__ {int num_links_active; int num_ble_links_active; int idle_timeout; TYPE_1__* lcb_pool; } ;
typedef void* TIMER_PARAM_TYPE ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 scalar_t__ BT_TRANSPORT_LE ;
 int HCI_INVALID_HANDLE ;
 int LST_DISCONNECTED ;
 int MAX_L2CAP_LINKS ;
 int QUEUE_SIZE_MAX ;
 scalar_t__ TRUE ;
 int btu_free_timer (TYPE_6__*) ;
 TYPE_5__* controller_get_interface () ;
 int fixed_queue_new (int ) ;
 int l2c_ble_link_adjust_allocation () ;
 int l2c_link_adjust_allocation () ;
 TYPE_4__ l2cb ;
 int list_new (int *) ;
 int memcpy (int ,int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int stub1 () ;

tL2C_LCB *l2cu_allocate_lcb (BD_ADDR p_bd_addr, BOOLEAN is_bonding, tBT_TRANSPORT transport)
{
    int xx;
    tL2C_LCB *p_lcb = &l2cb.lcb_pool[0];

    for (xx = 0; xx < MAX_L2CAP_LINKS; xx++, p_lcb++) {
        if (!p_lcb->in_use) {
            btu_free_timer(&p_lcb->timer_entry);
            btu_free_timer(&p_lcb->info_timer_entry);
            btu_free_timer(&p_lcb->upda_con_timer);

            memset (p_lcb, 0, sizeof (tL2C_LCB));
            memcpy (p_lcb->remote_bd_addr, p_bd_addr, BD_ADDR_LEN);

            p_lcb->in_use = TRUE;
            p_lcb->link_state = LST_DISCONNECTED;
            p_lcb->handle = HCI_INVALID_HANDLE;
            p_lcb->link_flush_tout = 0xFFFF;
            p_lcb->timer_entry.param = (TIMER_PARAM_TYPE)p_lcb;
            p_lcb->info_timer_entry.param = (TIMER_PARAM_TYPE)p_lcb;
            p_lcb->upda_con_timer.param = (TIMER_PARAM_TYPE)p_lcb;
            p_lcb->idle_timeout = l2cb.idle_timeout;
            p_lcb->id = 1;
            p_lcb->is_bonding = is_bonding;

            p_lcb->transport = transport;
            p_lcb->tx_data_len = controller_get_interface()->get_ble_default_data_packet_length();
            p_lcb->le_sec_pending_q = fixed_queue_new(QUEUE_SIZE_MAX);

            if (transport == BT_TRANSPORT_LE) {
                l2cb.num_ble_links_active++;
                l2c_ble_link_adjust_allocation();
            } else

            {
                l2cb.num_links_active++;
                l2c_link_adjust_allocation();
            }
            p_lcb->link_xmit_data_q = list_new(((void*)0));

            p_lcb->completed_packets = 0;

            return (p_lcb);
        }
    }


    return (((void*)0));
}
