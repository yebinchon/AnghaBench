
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ hci_handle; scalar_t__ state; } ;
typedef TYPE_2__ tSCO_CONN ;
typedef scalar_t__ UINT16 ;
struct TYPE_4__ {TYPE_2__* sco_db; } ;
struct TYPE_6__ {TYPE_1__ sco_cb; } ;
typedef int BOOLEAN ;


 scalar_t__ BTM_MAX_SCO_LINKS ;
 int FALSE ;
 scalar_t__ SCO_ST_CONNECTED ;
 int TRUE ;
 TYPE_3__ btm_cb ;

BOOLEAN btm_is_sco_active (UINT16 handle)
{
    return (FALSE);
}
