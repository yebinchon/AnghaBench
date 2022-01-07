
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {void* retrans_window; void* tx_interval; scalar_t__ tx_pkt_len; scalar_t__ rx_pkt_len; int bd_addr; } ;
struct TYPE_9__ {int (* p_esco_cback ) (int ,int *) ;TYPE_2__ data; } ;
struct TYPE_10__ {scalar_t__ state; scalar_t__ hci_handle; TYPE_3__ esco; } ;
typedef TYPE_4__ tSCO_CONN ;
typedef int tBTM_ESCO_EVT_DATA ;
struct TYPE_11__ {void* retrans_window; void* tx_interval; scalar_t__ tx_pkt_len; scalar_t__ rx_pkt_len; scalar_t__ sco_inx; void* hci_status; int bd_addr; } ;
typedef TYPE_5__ tBTM_CHG_ESCO_EVT_DATA ;
typedef void* UINT8 ;
typedef scalar_t__ UINT16 ;
struct TYPE_7__ {TYPE_4__* sco_db; } ;
struct TYPE_12__ {TYPE_1__ sco_cb; } ;


 int BD_ADDR_LEN ;
 int BTM_ESCO_CHG_EVT ;
 scalar_t__ BTM_MAX_SCO_LINKS ;
 int BTM_TRACE_EVENT (char*,scalar_t__,void*) ;
 scalar_t__ SCO_ST_CONNECTED ;
 TYPE_6__ btm_cb ;
 int memcpy (int ,int ,int ) ;
 int stub1 (int ,int *) ;

void btm_esco_proc_conn_chg (UINT8 status, UINT16 handle, UINT8 tx_interval,
                             UINT8 retrans_window, UINT16 rx_pkt_len,
                             UINT16 tx_pkt_len)
{
}
