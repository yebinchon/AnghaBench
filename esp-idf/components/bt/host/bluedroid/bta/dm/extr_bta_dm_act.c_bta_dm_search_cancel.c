
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {void* layer_specific; void* event; } ;
struct TYPE_8__ {TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_MSG ;
struct TYPE_9__ {int peer_bdaddr; scalar_t__ gatt_disc_active; int name_discover_done; int cancel_pending; } ;


 void* BTA_DM_API_DISCOVER_EVT ;
 void* BTA_DM_INQUIRY_CMPL_EVT ;
 void* BTA_DM_SEARCH_CMPL_EVT ;
 scalar_t__ BTM_CMD_STARTED ;
 scalar_t__ BTM_CancelInquiry () ;
 int BTM_CancelRemoteDeviceName () ;
 scalar_t__ BTM_IsInquiryActive () ;
 int TRUE ;
 int UNUSED (TYPE_2__*) ;
 int bta_dm_cancel_gatt_discovery (int ) ;
 int bta_dm_search_cancel_notify (int *) ;
 TYPE_4__ bta_dm_search_cb ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 scalar_t__ osi_malloc (int) ;

void bta_dm_search_cancel (tBTA_DM_MSG *p_data)
{
    UNUSED(p_data);
    tBTA_DM_MSG *p_msg;

    if (BTM_IsInquiryActive()) {
        if (BTM_CancelInquiry() != BTM_CMD_STARTED) {
            bta_dm_search_cancel_notify(((void*)0));
            p_msg = (tBTA_DM_MSG *) osi_malloc(sizeof(tBTA_DM_MSG));
            if (p_msg != ((void*)0)) {
                p_msg->hdr.event = BTA_DM_SEARCH_CMPL_EVT;
                p_msg->hdr.layer_specific = BTA_DM_API_DISCOVER_EVT;
                bta_sys_sendmsg(p_msg);
            }
        } else {

            bta_dm_search_cb.cancel_pending = TRUE;
        }
    }

    else if (!bta_dm_search_cb.name_discover_done) {
        BTM_CancelRemoteDeviceName();

        if ((p_msg = (tBTA_DM_MSG *) osi_malloc(sizeof(tBTA_DM_MSG))) != ((void*)0)) {
            p_msg->hdr.event = BTA_DM_SEARCH_CMPL_EVT;
            p_msg->hdr.layer_specific = BTA_DM_API_DISCOVER_EVT;
            bta_sys_sendmsg(p_msg);
        }

    } else {
        if ((p_msg = (tBTA_DM_MSG *) osi_malloc(sizeof(tBTA_DM_MSG))) != ((void*)0)) {
            p_msg->hdr.event = BTA_DM_INQUIRY_CMPL_EVT;
            p_msg->hdr.layer_specific = BTA_DM_API_DISCOVER_EVT;
            bta_sys_sendmsg(p_msg);
        }
    }


    if (bta_dm_search_cb.gatt_disc_active) {
        bta_dm_cancel_gatt_discovery(bta_dm_search_cb.peer_bdaddr);
    }

}
