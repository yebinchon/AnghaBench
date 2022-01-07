
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int icon; } ;
struct TYPE_5__ {TYPE_1__ ble_local_icon; } ;
typedef TYPE_2__ tBTA_DM_MSG ;


 int BTM_BleConfigLocalIcon (int ) ;

void bta_dm_ble_config_local_icon (tBTA_DM_MSG *p_data)
{
    BTM_BleConfigLocalIcon (p_data->ble_local_icon.icon);
}
