
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tBT_UUID ;
typedef int tBTA_TRANSPORT ;
struct TYPE_8__ {int num_uuid; int p_uuid; int srvc_mask; } ;
typedef TYPE_2__ tBTA_SERVICE_MASK_EXT ;
typedef int tBTA_DM_SEARCH_CBACK ;
struct TYPE_7__ {int event; } ;
struct TYPE_9__ {int num_uuid; int * p_uuid; int services; int transport; int sdp_search; int * p_cback; int bd_addr; TYPE_1__ hdr; } ;
typedef TYPE_3__ tBTA_DM_API_DISCOVER ;
typedef int UINT16 ;
typedef int BOOLEAN ;
typedef int BD_ADDR ;


 int BTA_DM_API_DISCOVER_EVT ;
 int bdcpy (int ,int ) ;
 int bta_sys_sendmsg (TYPE_3__*) ;
 int memcpy (int *,int ,int) ;
 int memset (TYPE_3__*,int ,int) ;
 scalar_t__ osi_malloc (int) ;

__attribute__((used)) static void bta_dm_discover_send_msg(BD_ADDR bd_addr, tBTA_SERVICE_MASK_EXT *p_services,
                                     tBTA_DM_SEARCH_CBACK *p_cback, BOOLEAN sdp_search,
                                     tBTA_TRANSPORT transport)
{
    tBTA_DM_API_DISCOVER *p_msg;
    UINT16 len = p_services ? (sizeof(tBTA_DM_API_DISCOVER) +
                                sizeof(tBT_UUID) * p_services->num_uuid) :
                  sizeof(tBTA_DM_API_DISCOVER);

    if ((p_msg = (tBTA_DM_API_DISCOVER *) osi_malloc(len)) != ((void*)0)) {
        memset(p_msg, 0, len);

        p_msg->hdr.event = BTA_DM_API_DISCOVER_EVT;
        bdcpy(p_msg->bd_addr, bd_addr);
        p_msg->p_cback = p_cback;
        p_msg->sdp_search = sdp_search;
        p_msg->transport = transport;

        if (p_services != ((void*)0)) {

            p_msg->services = p_services->srvc_mask;
            p_msg->num_uuid = p_services->num_uuid;
            if (p_services->num_uuid != 0) {
                p_msg->p_uuid = (tBT_UUID *)(p_msg + 1);
                memcpy(p_msg->p_uuid, p_services->p_uuid, sizeof(tBT_UUID) * p_services->num_uuid);
            }

        }

        bta_sys_sendmsg(p_msg);
    }
}
