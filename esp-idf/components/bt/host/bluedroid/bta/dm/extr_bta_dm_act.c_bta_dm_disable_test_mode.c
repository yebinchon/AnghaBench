
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTA_DM_MSG ;


 int BTM_DeviceReset (int *) ;
 int UNUSED (int *) ;

void bta_dm_disable_test_mode(tBTA_DM_MSG *p_data)
{
    UNUSED(p_data);
    BTM_DeviceReset(((void*)0));
}
