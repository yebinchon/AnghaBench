
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int event; } ;
struct TYPE_5__ {int rmt_addr; int * rmt_name_cb; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_GET_REMOTE_NAME ;
typedef int tBTA_CMPL_CB ;
typedef int BD_ADDR ;


 int BTA_DM_API_GET_REMOTE_NAME_EVT ;
 int bdcpy (int ,int ) ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 scalar_t__ osi_malloc (int) ;

void BTA_DmGetRemoteName(BD_ADDR remote_addr, tBTA_CMPL_CB *rmt_name_cb)
{
    tBTA_DM_API_GET_REMOTE_NAME *p_msg;

    if ((p_msg = (tBTA_DM_API_GET_REMOTE_NAME *) osi_malloc(sizeof(tBTA_DM_API_GET_REMOTE_NAME))) != ((void*)0)) {
        p_msg->hdr.event = BTA_DM_API_GET_REMOTE_NAME_EVT;
        p_msg->rmt_name_cb = rmt_name_cb;
        bdcpy(p_msg->rmt_addr, remote_addr);
        bta_sys_sendmsg(p_msg);
    }
}
