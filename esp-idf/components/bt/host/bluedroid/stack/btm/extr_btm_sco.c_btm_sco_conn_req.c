
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int bd_addr; scalar_t__ link_type; } ;
struct TYPE_10__ {TYPE_2__ data; int (* p_esco_cback ) (int ,int *) ;} ;
struct TYPE_11__ {scalar_t__ state; void* rem_bd_known; TYPE_3__ esco; int is_orig; } ;
typedef TYPE_4__ tSCO_CONN ;
struct TYPE_8__ {int packet_types; } ;
struct TYPE_12__ {int (* app_sco_ind_cb ) (scalar_t__) ;TYPE_4__* sco_db; TYPE_1__ def_esco_parms; } ;
typedef TYPE_5__ tSCO_CB ;
typedef int tBTM_ESCO_EVT_DATA ;
struct TYPE_13__ {scalar_t__ sco_inx; scalar_t__ link_type; int dev_class; int bd_addr; } ;
typedef TYPE_6__ tBTM_ESCO_CONN_REQ_EVT_DATA ;
typedef scalar_t__ UINT8 ;
typedef scalar_t__ UINT16 ;
struct TYPE_14__ {TYPE_5__ sco_cb; } ;
typedef int DEV_CLASS ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 int BTM_ESCO_CONN_REQ_EVT ;
 int BTM_ESCO_LINK_ONLY_MASK ;
 scalar_t__ BTM_LINK_TYPE_ESCO ;
 scalar_t__ BTM_LINK_TYPE_SCO ;
 scalar_t__ BTM_MAX_SCO_LINKS ;
 int BTM_SCO_EXCEPTION_PKTS_MASK ;
 int BTM_SCO_LINK_ONLY_MASK ;
 int BTM_TRACE_WARNING (char*) ;
 int DEV_CLASS_LEN ;
 int FALSE ;
 int HCI_ERR_HOST_REJECT_RESOURCES ;
 int HCI_SUCCESS ;
 scalar_t__ SCO_ST_CONNECTING ;
 scalar_t__ SCO_ST_LISTENING ;
 scalar_t__ SCO_ST_UNUSED ;
 scalar_t__ SCO_ST_W4_CONN_RSP ;
 void* TRUE ;
 TYPE_7__ btm_cb ;
 int btm_esco_conn_rsp (scalar_t__,int ,int ,int *) ;
 int memcmp (int ,int ,int ) ;
 int memcpy (int ,int ,int ) ;
 int stub1 (int ,int *) ;
 int stub2 (scalar_t__) ;

void btm_sco_conn_req (BD_ADDR bda, DEV_CLASS dev_class, UINT8 link_type)
{
    BTM_TRACE_WARNING("btm_sco_conn_req: No one wants this SCO connection; rejecting it");
    btm_esco_conn_rsp(BTM_MAX_SCO_LINKS, HCI_ERR_HOST_REJECT_RESOURCES, bda, ((void*)0));
}
