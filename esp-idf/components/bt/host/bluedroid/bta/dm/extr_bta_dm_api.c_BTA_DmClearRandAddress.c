
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int event; } ;
struct TYPE_6__ {TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_APT_CLEAR_ADDR ;


 int BTA_DM_API_CLEAR_RAND_ADDR_EVT ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ osi_malloc (int) ;

void BTA_DmClearRandAddress(void)
{
    tBTA_DM_APT_CLEAR_ADDR *p_msg;
    if ((p_msg = (tBTA_DM_APT_CLEAR_ADDR *) osi_malloc(sizeof(tBTA_DM_APT_CLEAR_ADDR))) != ((void*)0)) {
        memset(p_msg, 0, sizeof(tBTA_DM_APT_CLEAR_ADDR));
        p_msg->hdr.event = BTA_DM_API_CLEAR_RAND_ADDR_EVT;
        bta_sys_sendmsg(p_msg);
    }
}
