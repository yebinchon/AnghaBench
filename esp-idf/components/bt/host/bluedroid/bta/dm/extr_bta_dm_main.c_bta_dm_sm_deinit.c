
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTA_DM_SEARCH_CB ;
typedef int tBTA_DM_DI_CB ;
typedef int tBTA_DM_CB ;


 int FREE_AND_RESET (int ) ;
 int bta_dm_cb ;
 int bta_dm_cb_ptr ;
 int bta_dm_di_cb ;
 int bta_dm_di_cb_ptr ;
 int bta_dm_search_cb ;
 int bta_dm_search_cb_ptr ;
 int memset (int *,int ,int) ;

void bta_dm_sm_deinit(void)
{
    memset(&bta_dm_cb, 0, sizeof(tBTA_DM_CB));
    memset(&bta_dm_search_cb, 0, sizeof(tBTA_DM_SEARCH_CB));
    memset(&bta_dm_di_cb, 0, sizeof(tBTA_DM_DI_CB));





}
