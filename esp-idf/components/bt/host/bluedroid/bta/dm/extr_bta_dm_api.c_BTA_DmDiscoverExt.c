
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTA_SERVICE_MASK_EXT ;
typedef int tBTA_DM_SEARCH_CBACK ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BTA_TRANSPORT_UNKNOWN ;
 int bta_dm_discover_send_msg (int ,int *,int *,int ,int ) ;

void BTA_DmDiscoverExt(BD_ADDR bd_addr, tBTA_SERVICE_MASK_EXT *p_services,
                       tBTA_DM_SEARCH_CBACK *p_cback, BOOLEAN sdp_search)
{

    bta_dm_discover_send_msg(bd_addr, p_services, p_cback, sdp_search, BTA_TRANSPORT_UNKNOWN);


}
