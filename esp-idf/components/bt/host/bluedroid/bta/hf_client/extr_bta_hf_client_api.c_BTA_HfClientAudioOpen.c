
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT16 ;
struct TYPE_3__ {int layer_specific; int event; } ;
typedef TYPE_1__ BT_HDR ;


 int BTA_HF_CLIENT_API_AUDIO_OPEN_EVT ;
 int bta_sys_sendmsg (TYPE_1__*) ;
 scalar_t__ osi_malloc (int) ;

void BTA_HfClientAudioOpen(UINT16 handle)
{
    BT_HDR *p_buf;

    if ((p_buf = (BT_HDR *) osi_malloc(sizeof(BT_HDR))) != ((void*)0)) {
        p_buf->event = BTA_HF_CLIENT_API_AUDIO_OPEN_EVT;
        p_buf->layer_specific = handle;
        bta_sys_sendmsg(p_buf);
    }
}
