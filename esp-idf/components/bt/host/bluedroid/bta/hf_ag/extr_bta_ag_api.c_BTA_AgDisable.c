
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int event; } ;
typedef TYPE_1__ BT_HDR ;


 int BTA_AG_API_DISABLE_EVT ;
 int bta_sys_sendmsg (TYPE_1__*) ;
 scalar_t__ osi_malloc (int) ;

void BTA_AgDisable(void)
{
    BT_HDR *p_buf;
    if ((p_buf = (BT_HDR *) osi_malloc(sizeof(BT_HDR))) != ((void*)0)) {
        p_buf->event = BTA_AG_API_DISABLE_EVT;
        bta_sys_sendmsg(p_buf);
    }
}
