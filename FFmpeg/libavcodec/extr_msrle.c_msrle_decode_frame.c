
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_16__ {int palette_has_changed; int** data; int * linesize; } ;
struct TYPE_15__ {int width; int bits_per_coded_sample; int height; int pix_fmt; TYPE_1__* priv_data; } ;
struct TYPE_14__ {int* data; int size; } ;
struct TYPE_13__ {int* pal; TYPE_7__* frame; int gb; } ;
typedef TYPE_1__ MsrleContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AVPALETTE_SIZE ;
 int AV_LOG_ERROR ;
 int AV_PKT_DATA_PALETTE ;
 int FFALIGN (int,int) ;
 int av_frame_ref (void*,TYPE_7__*) ;
 int av_image_get_linesize (int ,int,int ) ;
 int av_log (TYPE_3__*,int ,char*,int) ;
 int* av_packet_get_side_data (TYPE_2__*,int ,int*) ;
 int bytestream2_init (int *,int const*,int) ;
 int ff_msrle_decode (TYPE_3__*,TYPE_7__*,int,int *) ;
 int ff_reget_buffer (TYPE_3__*,TYPE_7__*,int ) ;
 int memcpy (int*,int const*,int) ;

__attribute__((used)) static int msrle_decode_frame(AVCodecContext *avctx,
                              void *data, int *got_frame,
                              AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    MsrleContext *s = avctx->priv_data;
    int istride = FFALIGN(avctx->width*avctx->bits_per_coded_sample, 32) / 8;
    int ret;

    if (buf_size < 2)
        return AVERROR_INVALIDDATA;

    if ((ret = ff_reget_buffer(avctx, s->frame, 0)) < 0)
        return ret;

    if (avctx->bits_per_coded_sample > 1 && avctx->bits_per_coded_sample <= 8) {
        int size;
        const uint8_t *pal = av_packet_get_side_data(avpkt, AV_PKT_DATA_PALETTE, &size);

        if (pal && size == AVPALETTE_SIZE) {
            s->frame->palette_has_changed = 1;
            memcpy(s->pal, pal, AVPALETTE_SIZE);
        } else if (pal) {
            av_log(avctx, AV_LOG_ERROR, "Palette size %d is wrong\n", size);
        }

        memcpy(s->frame->data[1], s->pal, AVPALETTE_SIZE);
    }


    if (avctx->height * istride == avpkt->size) {
        int linesize = av_image_get_linesize(avctx->pix_fmt, avctx->width, 0);
        uint8_t *ptr = s->frame->data[0];
        uint8_t *buf = avpkt->data + (avctx->height-1)*istride;
        int i, j;

        if (linesize < 0)
            return linesize;

        for (i = 0; i < avctx->height; i++) {
            if (avctx->bits_per_coded_sample == 4) {
                for (j = 0; j < avctx->width - 1; j += 2) {
                    ptr[j+0] = buf[j>>1] >> 4;
                    ptr[j+1] = buf[j>>1] & 0xF;
                }
                if (avctx->width & 1)
                    ptr[j+0] = buf[j>>1] >> 4;
            } else {
                memcpy(ptr, buf, linesize);
            }
            buf -= istride;
            ptr += s->frame->linesize[0];
        }
    } else {
        bytestream2_init(&s->gb, buf, buf_size);
        ff_msrle_decode(avctx, s->frame, avctx->bits_per_coded_sample, &s->gb);
    }

    if ((ret = av_frame_ref(data, s->frame)) < 0)
        return ret;

    *got_frame = 1;


    return buf_size;
}
