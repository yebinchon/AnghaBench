
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int layer_specific; int event; } ;
struct TYPE_10__ {TYPE_2__ hdr; } ;
typedef TYPE_3__ tBTA_DM_MSG ;
struct TYPE_8__ {int remote_bd_addr; } ;
struct TYPE_12__ {TYPE_1__ results; } ;
struct TYPE_11__ {scalar_t__ services; TYPE_6__* p_btm_inq_info; scalar_t__* peer_name; int name_discover_done; } ;


 int APPL_TRACE_DEBUG (char*) ;
 int BTA_DM_API_DISCOVER_EVT ;
 int BTA_DM_SEARCH_CMPL_EVT ;
 TYPE_6__* BTM_InqDbNext (TYPE_6__*) ;
 int FALSE ;
 int bta_dm_discover_device (int ) ;
 TYPE_5__ bta_dm_search_cb ;
 int bta_sys_sendmsg (TYPE_3__*) ;
 scalar_t__ osi_malloc (int) ;

__attribute__((used)) static void bta_dm_discover_next_device(void)
{

    tBTA_DM_MSG *p_msg;

    APPL_TRACE_DEBUG("bta_dm_discover_next_device");


    if ((bta_dm_search_cb.p_btm_inq_info = BTM_InqDbNext(bta_dm_search_cb.p_btm_inq_info)) != ((void*)0)) {
        bta_dm_search_cb.name_discover_done = FALSE;
        bta_dm_search_cb.peer_name[0] = 0;

        bta_dm_discover_device(bta_dm_search_cb.p_btm_inq_info->results.remote_bd_addr);

    } else {

        bta_dm_search_cb.services = 0;

        if ((p_msg = (tBTA_DM_MSG *) osi_malloc(sizeof(tBTA_DM_MSG))) != ((void*)0)) {
            p_msg->hdr.event = BTA_DM_SEARCH_CMPL_EVT;
            p_msg->hdr.layer_specific = BTA_DM_API_DISCOVER_EVT;
            bta_sys_sendmsg(p_msg);
        }
    }
}
