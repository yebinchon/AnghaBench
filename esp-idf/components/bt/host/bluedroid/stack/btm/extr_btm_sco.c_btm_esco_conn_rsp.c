
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ link_type; } ;
struct TYPE_12__ {size_t packet_types; int retrans_effort; int voice_contfmt; int max_latency; int rx_bw; int tx_bw; } ;
struct TYPE_10__ {TYPE_2__ data; TYPE_5__ setup; } ;
struct TYPE_11__ {scalar_t__ state; TYPE_3__ esco; } ;
typedef TYPE_4__ tSCO_CONN ;
typedef TYPE_5__ tBTM_ESCO_PARAMS ;
typedef scalar_t__ UINT8 ;
typedef size_t UINT16 ;
struct TYPE_8__ {TYPE_5__ def_esco_parms; int esco_supported; TYPE_4__* sco_db; } ;
struct TYPE_13__ {size_t btm_sco_pkt_types_supported; TYPE_1__ sco_cb; } ;
typedef int BD_ADDR ;


 scalar_t__ BTM_LINK_TYPE_SCO ;
 size_t BTM_MAX_SCO_LINKS ;
 size_t BTM_SCO_EXCEPTION_PKTS_MASK ;
 size_t BTM_SCO_LINK_ONLY_MASK ;
 size_t BTM_SCO_SUPPORTED_PKTS_MASK ;
 int BTM_TRACE_ERROR (char*) ;
 scalar_t__ HCI_SUCCESS ;
 scalar_t__ SCO_ST_CONNECTING ;
 scalar_t__ SCO_ST_LISTENING ;
 scalar_t__ SCO_ST_UNUSED ;
 scalar_t__ SCO_ST_W4_CONN_RSP ;
 TYPE_7__ btm_cb ;
 scalar_t__ btsnd_hcic_accept_esco_conn (int ,int ,int ,int ,int ,int ,size_t) ;
 int btsnd_hcic_reject_conn (int ,scalar_t__) ;
 int btsnd_hcic_reject_esco_conn (int ,scalar_t__) ;

__attribute__((used)) static void btm_esco_conn_rsp (UINT16 sco_inx, UINT8 hci_status, BD_ADDR bda,
                               tBTM_ESCO_PARAMS *p_parms)
{
}
