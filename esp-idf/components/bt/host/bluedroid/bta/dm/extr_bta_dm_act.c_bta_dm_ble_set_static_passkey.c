
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int static_passkey; int add; } ;
struct TYPE_5__ {TYPE_1__ ble_set_static_passkey; } ;
typedef TYPE_2__ tBTA_DM_MSG ;


 int BTM_BleSetStaticPasskey (int ,int ) ;

void bta_dm_ble_set_static_passkey(tBTA_DM_MSG *p_data)
{
    BTM_BleSetStaticPasskey(p_data->ble_set_static_passkey.add, p_data->ble_set_static_passkey.static_passkey);
}
