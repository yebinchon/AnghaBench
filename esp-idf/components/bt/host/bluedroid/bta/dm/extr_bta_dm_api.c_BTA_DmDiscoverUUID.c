
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tSDP_UUID ;
typedef int tBTA_DM_SEARCH_CBACK ;
struct TYPE_4__ {int event; } ;
struct TYPE_5__ {int uuid; int * p_uuid; scalar_t__ num_uuid; int sdp_search; int * p_cback; int services; int bd_addr; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_DISCOVER ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BTA_DM_API_DISCOVER_EVT ;
 int BTA_USER_SERVICE_MASK ;
 int bdcpy (int ,int ) ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ osi_malloc (int) ;

void BTA_DmDiscoverUUID(BD_ADDR bd_addr, tSDP_UUID *uuid,
                        tBTA_DM_SEARCH_CBACK *p_cback, BOOLEAN sdp_search)
{
    tBTA_DM_API_DISCOVER *p_msg;

    if ((p_msg = (tBTA_DM_API_DISCOVER *) osi_malloc(sizeof(tBTA_DM_API_DISCOVER))) != ((void*)0)) {
        p_msg->hdr.event = BTA_DM_API_DISCOVER_EVT;
        bdcpy(p_msg->bd_addr, bd_addr);
        p_msg->services = BTA_USER_SERVICE_MASK;
        p_msg->p_cback = p_cback;
        p_msg->sdp_search = sdp_search;


        p_msg->num_uuid = 0;
        p_msg->p_uuid = ((void*)0);

        memcpy( &p_msg->uuid, uuid, sizeof(tSDP_UUID) );
        bta_sys_sendmsg(p_msg);
    }
}
