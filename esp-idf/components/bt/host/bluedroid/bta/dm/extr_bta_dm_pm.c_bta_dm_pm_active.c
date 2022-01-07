
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mode; } ;
typedef TYPE_1__ tBTM_PM_PWR_MD ;
typedef int pm ;
struct TYPE_5__ {int pm_id; } ;
typedef int BD_ADDR ;


 int BTM_PM_MD_ACTIVE ;
 int BTM_SetPowerMode (int ,int ,TYPE_1__*) ;
 TYPE_2__ bta_dm_cb ;
 int memset (void*,int ,int) ;

void bta_dm_pm_active(BD_ADDR peer_addr)
{
    tBTM_PM_PWR_MD pm;

    memset( (void *)&pm, 0, sizeof(pm));


    pm.mode = BTM_PM_MD_ACTIVE;
    BTM_SetPowerMode (bta_dm_cb.pm_id, peer_addr, &pm);
}
