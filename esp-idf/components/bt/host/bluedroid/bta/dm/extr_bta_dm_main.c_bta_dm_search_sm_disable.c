
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BTA_ID_DM_SEARCH ;
 int bta_sys_deregister (int ) ;

void bta_dm_search_sm_disable(void)
{
    bta_sys_deregister( BTA_ID_DM_SEARCH );

}
