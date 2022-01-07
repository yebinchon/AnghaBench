
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tSDP_DISCOVERY_DB ;
struct TYPE_9__ {scalar_t__ offset; int layer_specific; int event; } ;
struct TYPE_8__ {int len; int p_sdp_db; int bd_addr; int p_cback; } ;
struct TYPE_10__ {TYPE_2__ hdr; TYPE_1__ di_disc; } ;
typedef TYPE_3__ tBTA_DM_MSG ;
typedef scalar_t__ UINT16 ;
struct TYPE_12__ {int p_di_db; } ;
struct TYPE_11__ {int peer_bdaddr; int * p_sdp_db; int p_search_cback; } ;


 int APPL_TRACE_ERROR (char*) ;
 int BTA_DM_API_DI_DISCOVER_EVT ;
 int BTA_DM_SDP_DB_SIZE ;
 int BTA_DM_SEARCH_CMPL_EVT ;
 scalar_t__ BTA_FAILURE ;
 scalar_t__ BTA_SUCCESS ;
 scalar_t__ SDP_DiDiscover (int ,int ,int ,int ) ;
 scalar_t__ SDP_SUCCESS ;
 int bdcpy (int ,int ) ;
 TYPE_7__ bta_dm_di_cb ;
 int bta_dm_di_disc_callback ;
 TYPE_5__ bta_dm_search_cb ;
 int bta_sys_sendmsg (TYPE_3__*) ;
 scalar_t__ osi_malloc (int) ;

void bta_dm_di_disc (tBTA_DM_MSG *p_data)
{
    UINT16 result = BTA_FAILURE;
    tBTA_DM_MSG *p_msg;

    bta_dm_search_cb.p_search_cback = p_data->di_disc.p_cback;
    bdcpy(bta_dm_search_cb.peer_bdaddr, p_data->di_disc.bd_addr);
    bta_dm_di_cb.p_di_db = p_data->di_disc.p_sdp_db;

    if ((bta_dm_search_cb.p_sdp_db = (tSDP_DISCOVERY_DB *)osi_malloc(BTA_DM_SDP_DB_SIZE)) != ((void*)0)) {
        if ( SDP_DiDiscover(bta_dm_search_cb.peer_bdaddr, p_data->di_disc.p_sdp_db,
                            p_data->di_disc.len, bta_dm_di_disc_callback) == SDP_SUCCESS) {
            result = BTA_SUCCESS;
        }
    } else {
        APPL_TRACE_ERROR("No buffer to start DI discovery");
    }

    if ( result == BTA_FAILURE &&
            (p_msg = (tBTA_DM_MSG *) osi_malloc(sizeof(tBTA_DM_MSG))) != ((void*)0)) {
        p_msg->hdr.event = BTA_DM_SEARCH_CMPL_EVT;
        p_msg->hdr.layer_specific = BTA_DM_API_DI_DISCOVER_EVT;
        p_data->hdr.offset = result;
        bta_sys_sendmsg(p_msg);
    }
}
