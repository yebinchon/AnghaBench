
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int res; int bd_addr; } ;
struct TYPE_5__ {TYPE_1__ ble_sec_grant; } ;
typedef TYPE_2__ tBTA_DM_MSG ;


 int BTM_SecurityGrant (int ,int ) ;

void bta_dm_security_grant (tBTA_DM_MSG *p_data)
{
    BTM_SecurityGrant(p_data->ble_sec_grant.bd_addr, p_data->ble_sec_grant.res);
}
