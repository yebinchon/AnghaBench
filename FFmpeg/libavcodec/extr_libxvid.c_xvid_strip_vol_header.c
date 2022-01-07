
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int extradata_size; int extradata; } ;
struct TYPE_5__ {int* data; unsigned int size; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVCodecContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_malloc (int) ;
 int memcpy (int ,int*,int) ;
 int memmove (int*,int*,unsigned int) ;

__attribute__((used)) static int xvid_strip_vol_header(AVCodecContext *avctx, AVPacket *pkt,
                                 unsigned int header_len,
                                 unsigned int frame_len)
{
    int vo_len = 0, i;

    for (i = 0; i < header_len - 3; i++) {
        if (pkt->data[i] == 0x00 &&
            pkt->data[i + 1] == 0x00 &&
            pkt->data[i + 2] == 0x01 &&
            pkt->data[i + 3] == 0xB6) {
            vo_len = i;
            break;
        }
    }

    if (vo_len > 0) {

        if (!avctx->extradata) {
            avctx->extradata = av_malloc(vo_len);
            if (!avctx->extradata)
                return AVERROR(ENOMEM);
            memcpy(avctx->extradata, pkt->data, vo_len);
            avctx->extradata_size = vo_len;
        }


        memmove(pkt->data, &pkt->data[vo_len], frame_len - vo_len);
        pkt->size = frame_len - vo_len;
    }
    return 0;
}
