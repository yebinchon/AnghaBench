
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTA_DM_MSG ;


 int BTM_BleClearRandAddress () ;
 int UNUSED (int *) ;

void bta_dm_ble_clear_rand_address(tBTA_DM_MSG *p_data)
{
    UNUSED(p_data);
    BTM_BleClearRandAddress();
}
