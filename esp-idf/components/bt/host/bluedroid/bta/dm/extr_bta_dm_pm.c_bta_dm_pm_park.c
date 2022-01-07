
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tBTM_PM_MODE ;
struct TYPE_2__ {int pm_id; } ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 size_t BTA_DM_PM_PARK_IDX ;
 scalar_t__ BTM_PM_MD_PARK ;
 scalar_t__ BTM_PM_STS_ACTIVE ;
 int BTM_ReadPowerMode (int ,scalar_t__*) ;
 int BTM_SetPowerMode (int ,int ,int *) ;
 int TRUE ;
 TYPE_1__ bta_dm_cb ;
 int * p_bta_dm_pm_md ;

__attribute__((used)) static BOOLEAN bta_dm_pm_park(BD_ADDR peer_addr)
{

    tBTM_PM_MODE mode = BTM_PM_STS_ACTIVE;


    BTM_ReadPowerMode(peer_addr, &mode);

    if (mode != BTM_PM_MD_PARK) {
        BTM_SetPowerMode (bta_dm_cb.pm_id, peer_addr, &p_bta_dm_pm_md[BTA_DM_PM_PARK_IDX]);
    }
    return TRUE;

}
