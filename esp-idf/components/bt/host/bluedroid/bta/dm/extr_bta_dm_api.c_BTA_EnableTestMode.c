
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTA_STATUS ;
struct TYPE_3__ {int event; } ;
typedef TYPE_1__ BT_HDR ;


 int APPL_TRACE_API (char*) ;
 int BTA_DM_API_ENABLE_TEST_MODE_EVT ;
 int BTA_FAILURE ;
 int BTA_SUCCESS ;
 int bta_sys_sendmsg (TYPE_1__*) ;
 scalar_t__ osi_malloc (int) ;

tBTA_STATUS BTA_EnableTestMode(void)
{
    BT_HDR *p_msg;

    APPL_TRACE_API("BTA_EnableTestMode");

    if ((p_msg = (BT_HDR *) osi_malloc(sizeof(BT_HDR))) != ((void*)0)) {
        p_msg->event = BTA_DM_API_ENABLE_TEST_MODE_EVT;
        bta_sys_sendmsg(p_msg);
        return BTA_SUCCESS;
    }
    return BTA_FAILURE;
}
