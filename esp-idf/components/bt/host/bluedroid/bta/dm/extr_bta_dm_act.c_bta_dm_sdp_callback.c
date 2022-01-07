
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int event; } ;
struct TYPE_5__ {int sdp_result; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_SDP_RESULT ;
typedef int UINT16 ;


 int BTA_DM_SDP_RESULT_EVT ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 scalar_t__ osi_malloc (int) ;

__attribute__((used)) static void bta_dm_sdp_callback (UINT16 sdp_status)
{

    tBTA_DM_SDP_RESULT *p_msg;

    if ((p_msg = (tBTA_DM_SDP_RESULT *) osi_malloc(sizeof(tBTA_DM_SDP_RESULT))) != ((void*)0)) {
        p_msg->hdr.event = BTA_DM_SDP_RESULT_EVT;
        p_msg->sdp_result = sdp_status;
        bta_sys_sendmsg(p_msg);

    }
}
