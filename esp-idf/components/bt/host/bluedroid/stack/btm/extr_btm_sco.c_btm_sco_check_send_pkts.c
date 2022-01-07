
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sent_not_acked; int xmit_data_q; } ;
typedef TYPE_1__ tSCO_CONN ;
struct TYPE_5__ {scalar_t__ xmit_window_size; TYPE_1__* sco_db; } ;
typedef TYPE_2__ tSCO_CB ;
typedef size_t UINT16 ;
struct TYPE_6__ {TYPE_2__ sco_cb; } ;
typedef int BT_HDR ;


 int BTM_TRACE_DEBUG (char*,scalar_t__) ;
 TYPE_3__ btm_cb ;
 scalar_t__ fixed_queue_dequeue (int ,int ) ;
 scalar_t__ fixed_queue_length (int ) ;
 int hci_sco_data_to_lower (int *) ;

void btm_sco_check_send_pkts (UINT16 sco_inx)
{
    tSCO_CB *p_cb = &btm_cb.sco_cb;
    tSCO_CONN *p_ccb = &p_cb->sco_db[sco_inx];


    BT_HDR *p_buf;
    while (p_cb->xmit_window_size != 0)
    {
        if ((p_buf = (BT_HDR *)fixed_queue_dequeue(p_ccb->xmit_data_q, 0)) == ((void*)0)) {
            break;
        }





        p_cb->xmit_window_size -= 1;
        p_ccb->sent_not_acked += 1;


        hci_sco_data_to_lower(p_buf);
    }
}
