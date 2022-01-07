
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tBTA_AG_PEER_CODEC ;
struct TYPE_4__ {int layer_specific; int event; } ;
struct TYPE_5__ {int codec; TYPE_1__ hdr; } ;
typedef TYPE_2__ tBTA_AG_API_SETCODEC ;
typedef int UINT16 ;


 int BTA_AG_API_SETCODEC_EVT ;
 int bta_sys_sendmsg (TYPE_2__*) ;
 scalar_t__ osi_malloc (int) ;

void BTA_AgSetCodec(UINT16 handle, tBTA_AG_PEER_CODEC codec)
{
    tBTA_AG_API_SETCODEC *p_buf;

    if ((p_buf = (tBTA_AG_API_SETCODEC *) osi_malloc(sizeof(tBTA_AG_API_SETCODEC))) != ((void*)0)) {
        p_buf->hdr.event = BTA_AG_API_SETCODEC_EVT;
        p_buf->hdr.layer_specific = handle;
        p_buf->codec = codec;
        bta_sys_sendmsg(p_buf);
    }
}
