
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int event; } ;
struct TYPE_6__ {int icon; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_LOCAL_ICON ;


 int BTA_DM_API_LOCAL_ICON_EVT ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ osi_malloc (int) ;

void BTA_DmBleConfigLocalIcon(uint16_t icon)
{
    tBTA_DM_API_LOCAL_ICON *p_msg;

    if ((p_msg = (tBTA_DM_API_LOCAL_ICON *) osi_malloc(sizeof(tBTA_DM_API_LOCAL_ICON))) != ((void*)0)) {
        memset (p_msg, 0, sizeof(tBTA_DM_API_LOCAL_ICON));

        p_msg->hdr.event = BTA_DM_API_LOCAL_ICON_EVT;
        p_msg->icon = icon;
        bta_sys_sendmsg(p_msg);
    }
}
