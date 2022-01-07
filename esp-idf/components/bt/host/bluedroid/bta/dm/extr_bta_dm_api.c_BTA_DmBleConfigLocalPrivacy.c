
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tBTA_SET_LOCAL_PRIVACY_CBACK ;
struct TYPE_5__ {int event; } ;
struct TYPE_6__ {int * set_local_privacy_cback; int privacy_enable; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_LOCAL_PRIVACY ;
typedef int tBTA_DM_API_ENABLE_PRIVACY ;
typedef int BOOLEAN ;


 int BTA_DM_API_LOCAL_PRIVACY_EVT ;
 int UNUSED (int ) ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ osi_malloc (int) ;

void BTA_DmBleConfigLocalPrivacy(BOOLEAN privacy_enable, tBTA_SET_LOCAL_PRIVACY_CBACK *set_local_privacy_cback)
{


    tBTA_DM_API_LOCAL_PRIVACY *p_msg;

    if ((p_msg = (tBTA_DM_API_LOCAL_PRIVACY *) osi_malloc(sizeof(tBTA_DM_API_ENABLE_PRIVACY))) != ((void*)0)) {
        memset (p_msg, 0, sizeof(tBTA_DM_API_LOCAL_PRIVACY));

        p_msg->hdr.event = BTA_DM_API_LOCAL_PRIVACY_EVT;
        p_msg->privacy_enable = privacy_enable;
        p_msg->set_local_privacy_cback = set_local_privacy_cback;
        bta_sys_sendmsg(p_msg);
    }



}
