
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int bd_addr; } ;
struct TYPE_7__ {int setup; TYPE_1__ data; } ;
struct TYPE_9__ {scalar_t__ state; TYPE_2__ esco; } ;
typedef TYPE_4__ tSCO_CONN ;
typedef int UINT8 ;
typedef scalar_t__ UINT16 ;
struct TYPE_8__ {int desired_sco_mode; TYPE_4__* sco_db; } ;
struct TYPE_10__ {TYPE_3__ sco_cb; } ;


 scalar_t__ BTM_CMD_STARTED ;
 scalar_t__ BTM_GetHCIConnHandle (int ,int ) ;
 scalar_t__ BTM_MAX_SCO_LINKS ;
 int BTM_TRACE_API (char*,scalar_t__,int ,int ) ;
 int BT_TRANSPORT_BR_EDR ;
 scalar_t__ SCO_ST_CONNECTING ;
 scalar_t__ SCO_ST_PEND_UNPARK ;
 TYPE_5__ btm_cb ;
 scalar_t__ btm_send_connect_request (scalar_t__,int *) ;

void btm_sco_chk_pend_unpark (UINT8 hci_status, UINT16 hci_handle)
{
}
