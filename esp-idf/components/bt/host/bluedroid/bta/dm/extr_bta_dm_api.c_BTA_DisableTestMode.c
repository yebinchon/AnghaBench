
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int event; } ;
typedef TYPE_1__ BT_HDR ;


 int APPL_TRACE_API (char*) ;
 int BTA_DM_API_DISABLE_TEST_MODE_EVT ;
 int bta_sys_sendmsg (TYPE_1__*) ;
 scalar_t__ osi_malloc (int) ;

void BTA_DisableTestMode(void)
{
    BT_HDR *p_msg;

    APPL_TRACE_API("BTA_DisableTestMode");

    if ((p_msg = (BT_HDR *) osi_malloc(sizeof(BT_HDR))) != ((void*)0)) {
        p_msg->event = BTA_DM_API_DISABLE_TEST_MODE_EVT;
        bta_sys_sendmsg(p_msg);
    }
}
