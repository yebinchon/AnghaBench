
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int passkey; int bd_addr; } ;
struct TYPE_5__ {scalar_t__ accept; } ;
struct TYPE_7__ {TYPE_2__ ble_passkey_reply; TYPE_1__ pin_reply; } ;
typedef TYPE_3__ tBTA_DM_MSG ;


 int BTM_BlePasskeyReply (int ,int ,int ) ;
 int BTM_NOT_AUTHORIZED ;
 int BTM_SUCCESS ;

void bta_dm_ble_passkey_reply (tBTA_DM_MSG *p_data)
{
    if (p_data->pin_reply.accept) {
        BTM_BlePasskeyReply(p_data->ble_passkey_reply.bd_addr, BTM_SUCCESS, p_data->ble_passkey_reply.passkey);
    } else {
        BTM_BlePasskeyReply(p_data->ble_passkey_reply.bd_addr, BTM_NOT_AUTHORIZED, p_data->ble_passkey_reply.passkey);
    }

}
