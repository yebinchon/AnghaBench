
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTM_STATUS ;
struct TYPE_4__ {scalar_t__ accept; int bd_addr; } ;
struct TYPE_5__ {TYPE_1__ confirm; } ;
typedef TYPE_2__ tBTA_DM_MSG ;


 int BTM_ConfirmReqReply (int ,int ) ;
 int BTM_NOT_AUTHORIZED ;
 int BTM_SUCCESS ;
 scalar_t__ TRUE ;

void bta_dm_confirm(tBTA_DM_MSG *p_data)
{
    tBTM_STATUS res = BTM_NOT_AUTHORIZED;

    if (p_data->confirm.accept == TRUE) {
        res = BTM_SUCCESS;
    }
    BTM_ConfirmReqReply(res, p_data->confirm.bd_addr);
}
