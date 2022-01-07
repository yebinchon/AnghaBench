
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_17__ {int packet_types; } ;
struct TYPE_12__ {int bd_addr; } ;
struct TYPE_13__ {TYPE_6__ setup; TYPE_1__ data; } ;
struct TYPE_15__ {scalar_t__ state; scalar_t__ is_orig; int hci_handle; int * p_disc_cb; int * p_conn_cb; TYPE_2__ esco; scalar_t__ rem_bd_known; } ;
typedef TYPE_4__ tSCO_CONN ;
typedef scalar_t__ tBTM_STATUS ;
typedef int tBTM_SCO_CB ;
struct TYPE_16__ {int mode; } ;
typedef TYPE_5__ tBTM_PM_PWR_MD ;
typedef scalar_t__ tBTM_PM_MODE ;
typedef TYPE_6__ tBTM_ESCO_PARAMS ;
struct TYPE_18__ {scalar_t__ switch_role_state; } ;
typedef TYPE_7__ tACL_CONN ;
typedef int pm ;
typedef scalar_t__ UINT8 ;
typedef int UINT16 ;
struct TYPE_14__ {scalar_t__ desired_sco_mode; TYPE_6__ def_esco_parms; TYPE_4__* sco_db; } ;
struct TYPE_19__ {int btm_sco_pkt_types_supported; TYPE_3__ sco_cb; } ;
typedef scalar_t__ BOOLEAN ;
typedef int BD_ADDR ;


 int BD_ADDR_LEN ;
 scalar_t__ BTM_ACL_SWKEY_STATE_IDLE ;
 scalar_t__ BTM_BUSY ;
 scalar_t__ BTM_CMD_STARTED ;
 int BTM_GetHCIConnHandle (int ,int ) ;
 int BTM_IGNORE_SCO_PKT_TYPE ;
 int BTM_INVALID_HCI_HANDLE ;
 int BTM_INVALID_SCO_INDEX ;
 scalar_t__ BTM_LINK_TYPE_SCO ;
 int BTM_MAX_SCO_LINKS ;
 scalar_t__ BTM_NO_RESOURCES ;
 int BTM_PM_MD_ACTIVE ;
 scalar_t__ BTM_PM_MD_PARK ;
 scalar_t__ BTM_PM_MD_SNIFF ;
 int BTM_PM_SET_ONLY_ID ;
 scalar_t__ BTM_ReadPowerMode (int ,scalar_t__*) ;
 int BTM_SCO_EXCEPTION_PKTS_MASK ;
 int BTM_SCO_LINK_ONLY_MASK ;
 int BTM_SCO_SUPPORTED_PKTS_MASK ;
 scalar_t__ BTM_SUCCESS ;
 int BTM_SetPowerMode (int ,int ,TYPE_5__*) ;
 int BTM_TRACE_API (char*,int,...) ;
 scalar_t__ BTM_UNKNOWN_ADDR ;
 scalar_t__ BTM_WRONG_MODE ;
 int BT_TRANSPORT_BR_EDR ;
 scalar_t__ FALSE ;
 scalar_t__ HCI_LINK_TYPE_ESCO ;
 scalar_t__ SCO_ST_CONNECTING ;
 scalar_t__ SCO_ST_LISTENING ;
 scalar_t__ SCO_ST_PEND_ROLECHANGE ;
 scalar_t__ SCO_ST_PEND_UNPARK ;
 scalar_t__ SCO_ST_UNUSED ;
 scalar_t__ TRUE ;
 TYPE_7__* btm_bda_to_acl (int ,int ) ;
 TYPE_9__ btm_cb ;
 scalar_t__ btm_send_connect_request (int,TYPE_6__*) ;
 int memcmp (int ,int ,int ) ;
 int memcpy (int ,int ,int ) ;
 int memset (void*,int ,int) ;

tBTM_STATUS BTM_CreateSco (BD_ADDR remote_bda, BOOLEAN is_orig, UINT16 pkt_types,
                           UINT16 *p_sco_inx, tBTM_SCO_CB *p_conn_cb,
                           tBTM_SCO_CB *p_disc_cb)
{
    return (BTM_NO_RESOURCES);
}
