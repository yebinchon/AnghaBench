
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int event; } ;
struct TYPE_5__ {int channels; int * set_afh_cb; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_DM_API_SET_AFH_CHANNELS ;
typedef int tBTA_CMPL_CB ;


 int AFH_CHANNELS_LEN ;
 int BTA_DM_API_SET_AFH_CHANNELS_EVT ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 int memcpy (int ,int const*,int ) ;
 scalar_t__ osi_malloc (int) ;

void BTA_DmSetAfhChannels(const uint8_t *channels, tBTA_CMPL_CB *set_afh_cb)
{
    tBTA_DM_API_SET_AFH_CHANNELS *p_msg;

    if ((p_msg = (tBTA_DM_API_SET_AFH_CHANNELS *) osi_malloc(sizeof(tBTA_DM_API_SET_AFH_CHANNELS))) != ((void*)0)) {
        p_msg->hdr.event = BTA_DM_API_SET_AFH_CHANNELS_EVT;

        p_msg->set_afh_cb = set_afh_cb;
        memcpy(p_msg->channels, channels, AFH_CHANNELS_LEN);

        bta_sys_sendmsg(p_msg);
    }
}
