
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int bd_addr; } ;
struct TYPE_5__ {int bd_addr; scalar_t__ accept; } ;
struct TYPE_7__ {TYPE_2__ ble_passkey_reply; TYPE_1__ confirm; } ;
typedef TYPE_3__ tBTA_DM_MSG ;


 int BTM_BleConfirmReply (int ,int ) ;
 int BTM_NOT_AUTHORIZED ;
 int BTM_SUCCESS ;

void bta_dm_ble_confirm_reply (tBTA_DM_MSG *p_data)
{
    if (p_data->confirm.accept) {
        BTM_BleConfirmReply(p_data->confirm.bd_addr, BTM_SUCCESS);
    } else {
        BTM_BleConfirmReply(p_data->ble_passkey_reply.bd_addr, BTM_NOT_AUTHORIZED);
    }
}
