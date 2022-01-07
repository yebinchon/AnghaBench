
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int add_wl_cb; int addr_type; int remote_addr; int add_remove; } ;
struct TYPE_5__ {TYPE_1__ white_list; } ;
typedef TYPE_2__ tBTA_DM_MSG ;


 int BTM_BleUpdateAdvWhitelist (int ,int ,int ,int ) ;

void bta_dm_update_white_list(tBTA_DM_MSG *p_data)
{

    BTM_BleUpdateAdvWhitelist(p_data->white_list.add_remove, p_data->white_list.remote_addr, p_data->white_list.addr_type, p_data->white_list.add_wl_cb);

}
