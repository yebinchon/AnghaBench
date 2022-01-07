
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


struct TYPE_13__ {int num_resps; } ;
struct TYPE_17__ {TYPE_1__ inq_cmpl; } ;
typedef TYPE_5__ tBTA_DM_SEARCH ;
struct TYPE_16__ {int layer_specific; int event; } ;
struct TYPE_14__ {int num; } ;
struct TYPE_18__ {TYPE_4__ hdr; TYPE_2__ inq_cmpl; } ;
typedef TYPE_6__ tBTA_DM_MSG ;
struct TYPE_19__ {scalar_t__ services; TYPE_11__* p_btm_inq_info; scalar_t__* peer_name; int name_discover_done; int (* p_search_cback ) (int ,TYPE_5__*) ;} ;
struct TYPE_15__ {int remote_bd_addr; } ;
struct TYPE_12__ {TYPE_3__ results; } ;


 int APPL_TRACE_DEBUG (char*) ;
 int BTA_DM_API_DISCOVER_EVT ;
 int BTA_DM_INQ_CMPL_EVT ;
 int BTA_DM_SEARCH_CMPL_EVT ;
 TYPE_11__* BTM_InqDbFirst () ;
 int FALSE ;
 int bta_dm_discover_device (int ) ;
 TYPE_9__ bta_dm_search_cb ;
 int bta_sys_sendmsg (TYPE_6__*) ;
 scalar_t__ osi_malloc (int) ;
 int stub1 (int ,TYPE_5__*) ;

void bta_dm_inq_cmpl (tBTA_DM_MSG *p_data)
{
    tBTA_DM_MSG *p_msg;
    tBTA_DM_SEARCH data;

    APPL_TRACE_DEBUG("bta_dm_inq_cmpl");

    data.inq_cmpl.num_resps = p_data->inq_cmpl.num;
    bta_dm_search_cb.p_search_cback(BTA_DM_INQ_CMPL_EVT, &data);

    if ((bta_dm_search_cb.p_btm_inq_info = BTM_InqDbFirst()) != ((void*)0)) {

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
