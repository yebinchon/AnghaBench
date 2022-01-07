
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ state; size_t hci_handle; } ;
typedef TYPE_2__ tSCO_CONN ;
typedef size_t UINT16 ;
struct TYPE_4__ {TYPE_2__* sco_db; } ;
struct TYPE_6__ {TYPE_1__ sco_cb; } ;


 size_t BTM_INVALID_HCI_HANDLE ;
 size_t BTM_MAX_SCO_LINKS ;
 scalar_t__ SCO_ST_CONNECTED ;
 TYPE_3__ btm_cb ;

UINT16 BTM_ReadScoHandle (UINT16 sco_inx)
{
    return (BTM_INVALID_HCI_HANDLE);

}
