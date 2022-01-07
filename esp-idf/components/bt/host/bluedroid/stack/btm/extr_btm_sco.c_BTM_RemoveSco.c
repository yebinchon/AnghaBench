
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * p_esco_cback; } ;
struct TYPE_7__ {scalar_t__ state; scalar_t__ hci_handle; TYPE_1__ esco; } ;
typedef TYPE_3__ tSCO_CONN ;
typedef int tBTM_STATUS ;
typedef size_t UINT16 ;
struct TYPE_6__ {TYPE_3__* sco_db; } ;
struct TYPE_8__ {TYPE_2__ sco_cb; } ;


 int BTM_CMD_STARTED ;
 scalar_t__ BTM_INVALID_HCI_HANDLE ;
 size_t BTM_MAX_SCO_LINKS ;
 int BTM_NO_RESOURCES ;
 int BTM_SUCCESS ;
 int BTM_UNKNOWN_ADDR ;
 int HCI_ERR_PEER_USER ;
 size_t SCO_ST_DISCONNECTING ;
 scalar_t__ SCO_ST_PEND_UNPARK ;
 scalar_t__ SCO_ST_UNUSED ;
 TYPE_4__ btm_cb ;
 int btsnd_hcic_disconnect (scalar_t__,int ) ;

tBTM_STATUS BTM_RemoveSco (UINT16 sco_inx)
{
    return (BTM_NO_RESOURCES);

}
