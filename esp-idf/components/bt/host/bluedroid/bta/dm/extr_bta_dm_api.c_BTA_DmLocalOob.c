
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int event; } ;
struct TYPE_5__ {TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_LOC_OOB ;


 int BTA_DM_API_LOC_OOB_EVT ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 scalar_t__ osi_malloc (int) ;

void BTA_DmLocalOob(void)
{
    tBTA_DM_API_LOC_OOB *p_msg;

    if ((p_msg = (tBTA_DM_API_LOC_OOB *) osi_malloc(sizeof(tBTA_DM_API_LOC_OOB))) != ((void*)0)) {
        p_msg->hdr.event = BTA_DM_API_LOC_OOB_EVT;
        bta_sys_sendmsg(p_msg);
    }
}
